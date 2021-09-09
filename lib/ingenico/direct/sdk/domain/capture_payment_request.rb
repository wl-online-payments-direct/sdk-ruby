#
# This class was auto-generated from the API references found at
# https://support.direct.ingenico.com/documentation/api/reference/
#
require 'ingenico/direct/sdk/data_object'
require 'ingenico/direct/sdk/domain/payment_references'

module Ingenico::Direct::SDK
  module Domain

    # @attr [Long] amount
    # @attr [true/false] is_final
    # @attr [Ingenico::Direct::SDK::Domain::PaymentReferences] references
    class CapturePaymentRequest < Ingenico::Direct::SDK::DataObject
      attr_accessor :amount
      attr_accessor :is_final
      attr_accessor :references

      # @return (Hash)
      def to_h
        hash = super
        hash['amount'] = @amount unless @amount.nil?
        hash['isFinal'] = @is_final unless @is_final.nil?
        hash['references'] = @references.to_h if @references
        hash
      end

      def from_hash(hash)
        super
        @amount = hash['amount'] if hash.key? 'amount'
        @is_final = hash['isFinal'] if hash.key? 'isFinal'
        if hash.key? 'references'
          raise TypeError, "value '%s' is not a Hash" % [hash['references']] unless hash['references'].is_a? Hash
          @references = Ingenico::Direct::SDK::Domain::PaymentReferences.new_from_hash(hash['references'])
        end
      end
    end
  end
end
