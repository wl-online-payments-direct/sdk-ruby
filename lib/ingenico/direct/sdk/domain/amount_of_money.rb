#
# This class was auto-generated from the API references found at
# https://support.direct.ingenico.com/documentation/api/reference/
#
require 'ingenico/direct/sdk/data_object'

module Ingenico::Direct::SDK
  module Domain

    # @attr [Long] amount
    # @attr [String] currency_code
    class AmountOfMoney < Ingenico::Direct::SDK::DataObject
      attr_accessor :amount
      attr_accessor :currency_code

      # @return (Hash)
      def to_h
        hash = super
        hash['amount'] = @amount unless @amount.nil?
        hash['currencyCode'] = @currency_code unless @currency_code.nil?
        hash
      end

      def from_hash(hash)
        super
        @amount = hash['amount'] if hash.key? 'amount'
        @currency_code = hash['currencyCode'] if hash.key? 'currencyCode'
      end
    end
  end
end
