#
# This class was auto-generated from the API references found at
# https://support.direct.ingenico.com/documentation/api/reference/
#
require 'ingenico/direct/sdk/data_object'
require 'ingenico/direct/sdk/domain/amount_of_money'
require 'ingenico/direct/sdk/domain/card_payment_method_specific_output'
require 'ingenico/direct/sdk/domain/mobile_payment_method_specific_output'
require 'ingenico/direct/sdk/domain/payment_references'
require 'ingenico/direct/sdk/domain/redirect_payment_method_specific_output'
require 'ingenico/direct/sdk/domain/sepa_direct_debit_payment_method_specific_output'

module Ingenico::Direct::SDK
  module Domain

    # @attr [Ingenico::Direct::SDK::Domain::AmountOfMoney] amount_of_money
    # @attr [Long] amount_paid
    # @attr [Ingenico::Direct::SDK::Domain::CardPaymentMethodSpecificOutput] card_payment_method_specific_output
    # @attr [Ingenico::Direct::SDK::Domain::MobilePaymentMethodSpecificOutput] mobile_payment_method_specific_output
    # @attr [String] payment_method
    # @attr [Ingenico::Direct::SDK::Domain::RedirectPaymentMethodSpecificOutput] redirect_payment_method_specific_output
    # @attr [Ingenico::Direct::SDK::Domain::PaymentReferences] references
    # @attr [Ingenico::Direct::SDK::Domain::SepaDirectDebitPaymentMethodSpecificOutput] sepa_direct_debit_payment_method_specific_output
    class CaptureOutput < Ingenico::Direct::SDK::DataObject
      attr_accessor :amount_of_money
      attr_accessor :amount_paid
      attr_accessor :card_payment_method_specific_output
      attr_accessor :mobile_payment_method_specific_output
      attr_accessor :payment_method
      attr_accessor :redirect_payment_method_specific_output
      attr_accessor :references
      attr_accessor :sepa_direct_debit_payment_method_specific_output

      # @return (Hash)
      def to_h
        hash = super
        hash['amountOfMoney'] = @amount_of_money.to_h if @amount_of_money
        hash['amountPaid'] = @amount_paid unless @amount_paid.nil?
        hash['cardPaymentMethodSpecificOutput'] = @card_payment_method_specific_output.to_h if @card_payment_method_specific_output
        hash['mobilePaymentMethodSpecificOutput'] = @mobile_payment_method_specific_output.to_h if @mobile_payment_method_specific_output
        hash['paymentMethod'] = @payment_method unless @payment_method.nil?
        hash['redirectPaymentMethodSpecificOutput'] = @redirect_payment_method_specific_output.to_h if @redirect_payment_method_specific_output
        hash['references'] = @references.to_h if @references
        hash['sepaDirectDebitPaymentMethodSpecificOutput'] = @sepa_direct_debit_payment_method_specific_output.to_h if @sepa_direct_debit_payment_method_specific_output
        hash
      end

      def from_hash(hash)
        super
        if hash.key? 'amountOfMoney'
          raise TypeError, "value '%s' is not a Hash" % [hash['amountOfMoney']] unless hash['amountOfMoney'].is_a? Hash
          @amount_of_money = Ingenico::Direct::SDK::Domain::AmountOfMoney.new_from_hash(hash['amountOfMoney'])
        end
        @amount_paid = hash['amountPaid'] if hash.key? 'amountPaid'
        if hash.key? 'cardPaymentMethodSpecificOutput'
          raise TypeError, "value '%s' is not a Hash" % [hash['cardPaymentMethodSpecificOutput']] unless hash['cardPaymentMethodSpecificOutput'].is_a? Hash
          @card_payment_method_specific_output = Ingenico::Direct::SDK::Domain::CardPaymentMethodSpecificOutput.new_from_hash(hash['cardPaymentMethodSpecificOutput'])
        end
        if hash.key? 'mobilePaymentMethodSpecificOutput'
          raise TypeError, "value '%s' is not a Hash" % [hash['mobilePaymentMethodSpecificOutput']] unless hash['mobilePaymentMethodSpecificOutput'].is_a? Hash
          @mobile_payment_method_specific_output = Ingenico::Direct::SDK::Domain::MobilePaymentMethodSpecificOutput.new_from_hash(hash['mobilePaymentMethodSpecificOutput'])
        end
        @payment_method = hash['paymentMethod'] if hash.key? 'paymentMethod'
        if hash.key? 'redirectPaymentMethodSpecificOutput'
          raise TypeError, "value '%s' is not a Hash" % [hash['redirectPaymentMethodSpecificOutput']] unless hash['redirectPaymentMethodSpecificOutput'].is_a? Hash
          @redirect_payment_method_specific_output = Ingenico::Direct::SDK::Domain::RedirectPaymentMethodSpecificOutput.new_from_hash(hash['redirectPaymentMethodSpecificOutput'])
        end
        if hash.key? 'references'
          raise TypeError, "value '%s' is not a Hash" % [hash['references']] unless hash['references'].is_a? Hash
          @references = Ingenico::Direct::SDK::Domain::PaymentReferences.new_from_hash(hash['references'])
        end
        if hash.key? 'sepaDirectDebitPaymentMethodSpecificOutput'
          raise TypeError, "value '%s' is not a Hash" % [hash['sepaDirectDebitPaymentMethodSpecificOutput']] unless hash['sepaDirectDebitPaymentMethodSpecificOutput'].is_a? Hash
          @sepa_direct_debit_payment_method_specific_output = Ingenico::Direct::SDK::Domain::SepaDirectDebitPaymentMethodSpecificOutput.new_from_hash(hash['sepaDirectDebitPaymentMethodSpecificOutput'])
        end
      end
    end
  end
end
