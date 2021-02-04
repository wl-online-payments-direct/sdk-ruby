#
# This class was auto-generated from the API references found at
# https://support.direct.ingenico.com/documentation/api/reference/
#
require 'ingenico/direct/sdk/data_object'
require 'ingenico/direct/sdk/domain/payment_response'

module Ingenico::Direct::SDK
  module Domain

    # @attr [Ingenico::Direct::SDK::Domain::PaymentResponse] payment
    class CancelPaymentResponse < Ingenico::Direct::SDK::DataObject
      attr_accessor :payment

      # @return (Hash)
      def to_h
        hash = super
        hash['payment'] = @payment.to_h if @payment
        hash
      end

      def from_hash(hash)
        super
        if hash.key? 'payment'
          raise TypeError, "value '%s' is not a Hash" % [hash['payment']] unless hash['payment'].is_a? Hash
          @payment = Ingenico::Direct::SDK::Domain::PaymentResponse.new_from_hash(hash['payment'])
        end
      end
    end
  end
end
