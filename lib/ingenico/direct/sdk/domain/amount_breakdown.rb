#
# This class was auto-generated from the API references found at
# https://support.direct.ingenico.com/documentation/api/reference/
#
require 'ingenico/direct/sdk/data_object'

module Ingenico::Direct::SDK
  module Domain

    # @attr [Long] amount
    # @attr [String] type
    class AmountBreakdown < Ingenico::Direct::SDK::DataObject
      attr_accessor :amount
      attr_accessor :type

      # @return (Hash)
      def to_h
        hash = super
        hash['amount'] = @amount unless @amount.nil?
        hash['type'] = @type unless @type.nil?
        hash
      end

      def from_hash(hash)
        super
        @amount = hash['amount'] if hash.key? 'amount'
        @type = hash['type'] if hash.key? 'type'
      end
    end
  end
end
