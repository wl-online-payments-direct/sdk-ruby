#
# This class was auto-generated from the API references found at
# https://support.direct.ingenico.com/documentation/api/reference/
#
require 'ingenico/direct/sdk/data_object'

module Ingenico::Direct::SDK
  module Domain

    # @attr [Long] amount
    # @attr [true/false] is_final
    class CapturePaymentRequest < Ingenico::Direct::SDK::DataObject
      attr_accessor :amount
      attr_accessor :is_final

      # @return (Hash)
      def to_h
        hash = super
        hash['amount'] = @amount unless @amount.nil?
        hash['isFinal'] = @is_final unless @is_final.nil?
        hash
      end

      def from_hash(hash)
        super
        @amount = hash['amount'] if hash.key? 'amount'
        @is_final = hash['isFinal'] if hash.key? 'isFinal'
      end
    end
  end
end
