#
# This class was auto-generated from the API references found at
# https://support.direct.ingenico.com/documentation/api/reference/
#
require 'ingenico/direct/sdk/data_object'

module Ingenico::Direct::SDK
  module Domain

    # @attr [String] merchant_reference
    class PaymentReferences < Ingenico::Direct::SDK::DataObject
      attr_accessor :merchant_reference

      # @return (Hash)
      def to_h
        hash = super
        hash['merchantReference'] = @merchant_reference unless @merchant_reference.nil?
        hash
      end

      def from_hash(hash)
        super
        @merchant_reference = hash['merchantReference'] if hash.key? 'merchantReference'
      end
    end
  end
end
