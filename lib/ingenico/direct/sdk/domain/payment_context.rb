#
# This class was auto-generated from the API references found at
# https://support.direct.ingenico.com/documentation/api/reference/
#
require 'ingenico/direct/sdk/data_object'
require 'ingenico/direct/sdk/domain/amount_of_money'

module Ingenico::Direct::SDK
  module Domain

    # @attr [Ingenico::Direct::SDK::Domain::AmountOfMoney] amount_of_money
    # @attr [String] country_code
    # @attr [true/false] is_recurring
    class PaymentContext < Ingenico::Direct::SDK::DataObject
      attr_accessor :amount_of_money
      attr_accessor :country_code
      attr_accessor :is_recurring

      # @return (Hash)
      def to_h
        hash = super
        hash['amountOfMoney'] = @amount_of_money.to_h if @amount_of_money
        hash['countryCode'] = @country_code unless @country_code.nil?
        hash['isRecurring'] = @is_recurring unless @is_recurring.nil?
        hash
      end

      def from_hash(hash)
        super
        if hash.key? 'amountOfMoney'
          raise TypeError, "value '%s' is not a Hash" % [hash['amountOfMoney']] unless hash['amountOfMoney'].is_a? Hash
          @amount_of_money = Ingenico::Direct::SDK::Domain::AmountOfMoney.new_from_hash(hash['amountOfMoney'])
        end
        @country_code = hash['countryCode'] if hash.key? 'countryCode'
        @is_recurring = hash['isRecurring'] if hash.key? 'isRecurring'
      end
    end
  end
end
