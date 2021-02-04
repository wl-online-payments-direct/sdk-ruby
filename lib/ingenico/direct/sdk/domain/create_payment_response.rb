#
# This class was auto-generated from the API references found at
# https://support.direct.ingenico.com/documentation/api/reference/
#
require 'ingenico/direct/sdk/data_object'
require 'ingenico/direct/sdk/domain/merchant_action'
require 'ingenico/direct/sdk/domain/payment_creation_output'
require 'ingenico/direct/sdk/domain/payment_response'

module Ingenico::Direct::SDK
  module Domain

    # @attr [Ingenico::Direct::SDK::Domain::PaymentCreationOutput] creation_output
    # @attr [Ingenico::Direct::SDK::Domain::MerchantAction] merchant_action
    # @attr [Ingenico::Direct::SDK::Domain::PaymentResponse] payment
    class CreatePaymentResponse < Ingenico::Direct::SDK::DataObject
      attr_accessor :creation_output
      attr_accessor :merchant_action
      attr_accessor :payment

      # @return (Hash)
      def to_h
        hash = super
        hash['creationOutput'] = @creation_output.to_h if @creation_output
        hash['merchantAction'] = @merchant_action.to_h if @merchant_action
        hash['payment'] = @payment.to_h if @payment
        hash
      end

      def from_hash(hash)
        super
        if hash.key? 'creationOutput'
          raise TypeError, "value '%s' is not a Hash" % [hash['creationOutput']] unless hash['creationOutput'].is_a? Hash
          @creation_output = Ingenico::Direct::SDK::Domain::PaymentCreationOutput.new_from_hash(hash['creationOutput'])
        end
        if hash.key? 'merchantAction'
          raise TypeError, "value '%s' is not a Hash" % [hash['merchantAction']] unless hash['merchantAction'].is_a? Hash
          @merchant_action = Ingenico::Direct::SDK::Domain::MerchantAction.new_from_hash(hash['merchantAction'])
        end
        if hash.key? 'payment'
          raise TypeError, "value '%s' is not a Hash" % [hash['payment']] unless hash['payment'].is_a? Hash
          @payment = Ingenico::Direct::SDK::Domain::PaymentResponse.new_from_hash(hash['payment'])
        end
      end
    end
  end
end
