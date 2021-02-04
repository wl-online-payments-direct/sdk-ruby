#
# This class was auto-generated from the API references found at
# https://support.direct.ingenico.com/documentation/api/reference/
#
require 'ingenico/direct/sdk/data_object'
require 'ingenico/direct/sdk/domain/complete_payment_card_payment_method_specific_input'
require 'ingenico/direct/sdk/domain/order'

module Ingenico::Direct::SDK
  module Domain

    # @attr [Ingenico::Direct::SDK::Domain::CompletePaymentCardPaymentMethodSpecificInput] card_payment_method_specific_input
    # @attr [Ingenico::Direct::SDK::Domain::Order] order
    class CompletePaymentRequest < Ingenico::Direct::SDK::DataObject
      attr_accessor :card_payment_method_specific_input
      attr_accessor :order

      # @return (Hash)
      def to_h
        hash = super
        hash['cardPaymentMethodSpecificInput'] = @card_payment_method_specific_input.to_h if @card_payment_method_specific_input
        hash['order'] = @order.to_h if @order
        hash
      end

      def from_hash(hash)
        super
        if hash.key? 'cardPaymentMethodSpecificInput'
          raise TypeError, "value '%s' is not a Hash" % [hash['cardPaymentMethodSpecificInput']] unless hash['cardPaymentMethodSpecificInput'].is_a? Hash
          @card_payment_method_specific_input = Ingenico::Direct::SDK::Domain::CompletePaymentCardPaymentMethodSpecificInput.new_from_hash(hash['cardPaymentMethodSpecificInput'])
        end
        if hash.key? 'order'
          raise TypeError, "value '%s' is not a Hash" % [hash['order']] unless hash['order'].is_a? Hash
          @order = Ingenico::Direct::SDK::Domain::Order.new_from_hash(hash['order'])
        end
      end
    end
  end
end
