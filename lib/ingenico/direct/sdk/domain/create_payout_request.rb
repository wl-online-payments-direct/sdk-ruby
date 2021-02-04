#
# This class was auto-generated from the API references found at
# https://support.direct.ingenico.com/documentation/api/reference/
#
require 'ingenico/direct/sdk/data_object'
require 'ingenico/direct/sdk/domain/amount_of_money'
require 'ingenico/direct/sdk/domain/card_payout_method_specific_input'
require 'ingenico/direct/sdk/domain/payment_references'

module Ingenico::Direct::SDK
  module Domain

    # @attr [Ingenico::Direct::SDK::Domain::AmountOfMoney] amount_of_money
    # @attr [Ingenico::Direct::SDK::Domain::CardPayoutMethodSpecificInput] card_payout_method_specific_input
    # @attr [Ingenico::Direct::SDK::Domain::PaymentReferences] references
    class CreatePayoutRequest < Ingenico::Direct::SDK::DataObject
      attr_accessor :amount_of_money
      attr_accessor :card_payout_method_specific_input
      attr_accessor :references

      # @return (Hash)
      def to_h
        hash = super
        hash['amountOfMoney'] = @amount_of_money.to_h if @amount_of_money
        hash['cardPayoutMethodSpecificInput'] = @card_payout_method_specific_input.to_h if @card_payout_method_specific_input
        hash['references'] = @references.to_h if @references
        hash
      end

      def from_hash(hash)
        super
        if hash.key? 'amountOfMoney'
          raise TypeError, "value '%s' is not a Hash" % [hash['amountOfMoney']] unless hash['amountOfMoney'].is_a? Hash
          @amount_of_money = Ingenico::Direct::SDK::Domain::AmountOfMoney.new_from_hash(hash['amountOfMoney'])
        end
        if hash.key? 'cardPayoutMethodSpecificInput'
          raise TypeError, "value '%s' is not a Hash" % [hash['cardPayoutMethodSpecificInput']] unless hash['cardPayoutMethodSpecificInput'].is_a? Hash
          @card_payout_method_specific_input = Ingenico::Direct::SDK::Domain::CardPayoutMethodSpecificInput.new_from_hash(hash['cardPayoutMethodSpecificInput'])
        end
        if hash.key? 'references'
          raise TypeError, "value '%s' is not a Hash" % [hash['references']] unless hash['references'].is_a? Hash
          @references = Ingenico::Direct::SDK::Domain::PaymentReferences.new_from_hash(hash['references'])
        end
      end
    end
  end
end
