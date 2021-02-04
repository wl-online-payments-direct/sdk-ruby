require 'spec_helper'
require 'ingenico/direct/sdk/domain/address'
require 'ingenico/direct/sdk/domain/customer_token'
require 'ingenico/direct/sdk/domain/token_card'
require 'ingenico/direct/sdk/domain/token_card_data'
require 'ingenico/direct/sdk/domain/token_response'

DataObject ||= Ingenico::Direct::SDK::DataObject
DefaultMarshaller ||= Ingenico::Direct::SDK::DefaultImpl::DefaultMarshaller
Domain ||= Ingenico::Direct::SDK::Domain

class TokenResponseWithExtraField < Domain::TokenResponse
  attr_accessor :dummy
end

describe DefaultMarshaller do
  context 'unmarshal()' do
    it 'should unmarshal extra fields' do
      token = TokenResponseWithExtraField.new
      token.card = Domain::TokenCard.new
      token.card.alias = "12345"
      token.card.data= Domain::TokenCardData.new
      # token.card.customer = Token::CustomerToken.new
      # token.card.customer.billing_address = Ingenico::Direct::SDK::Domain::Address.new
      # token.card.customer.billing_address.country_code = 'NL'
      # token.card.data = Token::TokenCardData.new
      token.dummy = 'foobar'
      # marshal the extended token and unmarshal it as a regular token response
      unmarshalled = DefaultMarshaller.INSTANCE.unmarshal(DefaultMarshaller.INSTANCE.marshal(token), Domain::TokenResponse)

      expect(unmarshalled.card).to_not be_nil
      expect(unmarshalled.card.data).to_not be_nil
      expect(unmarshalled.card.alias).to eq('12345')
      # expect(unmarshalled.card.customer).to_not be_nil
      # expect(unmarshalled.card.customer.billing_address).to_not be_nil
      # expect(unmarshalled.card.customer.billing_address.country_code).to eq('NL')
      expect(token.card.data).to_not be_nil
    end
  end
end
