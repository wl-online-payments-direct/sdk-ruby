#
# This class was auto-generated from the API references found at
# https://support.direct.ingenico.com/documentation/api/reference/
#
require 'ingenico/direct/sdk/data_object'
require 'ingenico/direct/sdk/domain/payment_context'

module Ingenico::Direct::SDK
  module Domain

    # @attr [String] bin
    # @attr [Ingenico::Direct::SDK::Domain::PaymentContext] payment_context
    class GetIINDetailsRequest < Ingenico::Direct::SDK::DataObject
      attr_accessor :bin
      attr_accessor :payment_context

      # @return (Hash)
      def to_h
        hash = super
        hash['bin'] = @bin unless @bin.nil?
        hash['paymentContext'] = @payment_context.to_h if @payment_context
        hash
      end

      def from_hash(hash)
        super
        @bin = hash['bin'] if hash.key? 'bin'
        if hash.key? 'paymentContext'
          raise TypeError, "value '%s' is not a Hash" % [hash['paymentContext']] unless hash['paymentContext'].is_a? Hash
          @payment_context = Ingenico::Direct::SDK::Domain::PaymentContext.new_from_hash(hash['paymentContext'])
        end
      end
    end
  end
end
