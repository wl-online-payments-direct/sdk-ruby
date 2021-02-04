require 'spec_helper'
require 'ingenico/direct/sdk/domain/card'
require 'ingenico/direct/sdk/domain/card_payment_method_specific_input'
require 'ingenico/direct/sdk/domain/create_payment_request'
require 'ingenico/direct/sdk/domain/customer'
require 'ingenico/direct/sdk/domain/order'
require 'ingenico/direct/sdk/merchant/payments/payments_client'

PaymentsClient ||= Ingenico::Direct::SDK::Merchant::Payments::PaymentsClient
Domain ||= Ingenico::Direct::SDK::Domain
ResponseHeader ||= Ingenico::Direct::SDK::ResponseHeader

ResponseException ||= Ingenico::Direct::SDK::ResponseException
CommunicationException ||= Ingenico::Direct::SDK::CommunicationException
ApiException ||= Ingenico::Direct::SDK::ApiException
ValidationException ||= Ingenico::Direct::SDK::ValidationException
DeclinedPaymentException ||= Ingenico::Direct::SDK::DeclinedPaymentException
ReferenceException ||= Ingenico::Direct::SDK::ReferenceException
IdempotenceException ||= Ingenico::Direct::SDK::IdempotenceException

describe PaymentsClient do

  resource_prefix = 'spec/fixtures/resources/payment/'
  let(:request_body) {create_resource}

  it 'can create payments' do
    connection = double(Ingenico::Direct::SDK::Connection)
    client = init_client(connection)
    response_body = IO.read("#{resource_prefix}pending_capture.json")
    allow(connection).to receive(:post).and_yield(201, {}, StringIO.new(response_body))

    response = client.merchant('merchantId').payments.create_payment(request_body)

    expect(response.payment.id).to eq('1_1')
    expect(response.payment.status).to eq('PENDING_CAPTURE')
  end

  it 'can deal with rejection' do
    connection = double(Ingenico::Direct::SDK::Connection)
    client = init_client(connection)
    response_body = IO.read("#{resource_prefix}rejected.json")
    allow(connection).to receive(:post).and_yield(400, {}, StringIO.new(response_body))

    expect{client.merchant('merchantId').payments.create_payment(request_body)}.to raise_error(DeclinedPaymentException){|error|
      expect(error.message).to include("payment '1_1'")
      expect(error.message).to include("status 'REJECTED'")
      expect(error.message).to include(response_body)
      expect(error.payment_result).to_not be_nil
      expect(error.payment_result.payment.id).to eq('1_1')
      expect(error.payment_result.payment.status).to eq('REJECTED')
    }
  end

  it 'can deal with invalid requests' do
    connection = double(Ingenico::Direct::SDK::Connection)
    client = init_client(connection)
    response_body = IO.read("#{resource_prefix}invalid_request.json")
    allow(connection).to receive(:post).and_yield(400, {}, StringIO.new(response_body))

    expect{client.merchant('merchantId').payments.create_payment(request_body)}.to raise_error(ValidationException){|error|
      expect(error.message).to include(response_body)
    }
  end

  it 'can deal with not being authorized' do
    connection = double(Ingenico::Direct::SDK::Connection)
    client = init_client(connection)
    response_body = IO.read("#{resource_prefix}invalid_authorization.json")
    allow(connection).to receive(:post).and_yield(401, {}, StringIO.new(response_body))

    expect{client.merchant('merchantId').payments.create_payment(request_body)}.to raise_error(ApiException){|error|

      expect(error.message).to include(response_body)
    }
  end

  it 'can handle the payment already existing' do
    connection = double(Ingenico::Direct::SDK::Connection)
    client = init_client(connection)
    response_body = IO.read("#{resource_prefix}duplicate_request.json")
    allow(connection).to receive(:post).and_yield(409, {}, StringIO.new(response_body))

    expect{client.merchant('merchantId').payments.create_payment(request_body)}.to raise_error(ReferenceException){|error|
      expect(error.message).to include(response_body)
    }
  end

  it 'can deal with sending a request twice' do
    connection = double(Ingenico::Direct::SDK::Connection)
    client = init_client(connection)
    response_body = IO.read("#{resource_prefix}duplicate_request.json")
    context = Ingenico::Direct::SDK::CallContext.new('key')
    allow(connection).to receive(:post).and_yield(409, {}, StringIO.new(response_body))

    expect{client.merchant('merchantId').payments.create_payment(request_body, context)}
        .to raise_error(IdempotenceException){|error|
          expect(error.message).to include(response_body)
          expect(error.idempotence_key).to eq(context.idempotence_key)
    }
  end

  it 'can handle its client not being found' do
    connection = double(Ingenico::Direct::SDK::Connection)
    client = init_client(connection)
    response_body = IO.read("#{resource_prefix}not_found.html")
    allow(connection).to receive(:post).and_yield(404, [ResponseHeader.new('content-type', 'text/html')], StringIO.new(response_body))

    expect{client.merchant('merchantId').payments.create_payment(request_body)}.to raise_error(Ingenico::Direct::SDK::NotFoundException){|error|
      expect(error.cause).to be_a(ResponseException)
      expect(error.cause.message).to include(response_body)
    }
  end

  it 'can handle the server misbehaving' do
    connection = double(Ingenico::Direct::SDK::Connection)
    client = init_client(connection)
    response_body = IO.read("#{resource_prefix}method_not_allowed.html")
    allow(connection).to receive(:post).and_yield(405, [ResponseHeader.new('content-type', 'text/html')], StringIO.new(response_body))

    expect{client.merchant('merchantId').payments.create_payment(request_body)}.to raise_error(CommunicationException){|error|
      expect(error.cause).to be_a(ResponseException)
      expect(error.cause.message).to include(response_body)
    }
  end

  def init_client(connection)
    communicator = Ingenico::Direct::SDK::Communicator.new(
      'http://localhost',
      connection,
      Ingenico::Direct::SDK::DefaultImpl::DefaultAuthenticator.new('admin', 'admin'),
      Ingenico::Direct::SDK::MetaDataProvider.new('Ingenico'),
      Ingenico::Direct::SDK::DefaultImpl::DefaultMarshaller.INSTANCE)
    return Ingenico::Direct::SDK::Factory.create_client_from_communicator(communicator)
  end

  def create_resource
    amount_of_money = Domain::AmountOfMoney.new
    amount_of_money.amount = 2345
    amount_of_money.currency_code = 'EUR'
    customer = Domain::Customer.new
    billing_address = Domain::Address.new
    billing_address.country_code = 'BE'
    customer.billing_address = billing_address
    order = Domain::Order.new
    order.customer = customer
    card = Domain::Card.new
    card.cvv = '123'
    card.card_number = '4567350000427977'
    card.expiry_date = '1230'
    card_payment_method_specific_input = Domain::CardPaymentMethodSpecificInput.new
    card_payment_method_specific_input.card = card
    card_payment_method_specific_input.payment_product_id = 1
    body = Domain::CreatePaymentRequest.new
    body.card_payment_method_specific_input = card_payment_method_specific_input
    body
  end
end
