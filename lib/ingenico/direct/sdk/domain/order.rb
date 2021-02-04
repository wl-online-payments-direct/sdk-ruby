#
# This class was auto-generated from the API references found at
# https://support.direct.ingenico.com/documentation/api/reference/
#
require 'ingenico/direct/sdk/data_object'
require 'ingenico/direct/sdk/domain/additional_order_input'
require 'ingenico/direct/sdk/domain/amount_of_money'
require 'ingenico/direct/sdk/domain/customer'
require 'ingenico/direct/sdk/domain/order_references'
require 'ingenico/direct/sdk/domain/shipping'
require 'ingenico/direct/sdk/domain/shopping_cart'

module Ingenico::Direct::SDK
  module Domain

    # @attr [Ingenico::Direct::SDK::Domain::AdditionalOrderInput] additional_input
    # @attr [Ingenico::Direct::SDK::Domain::AmountOfMoney] amount_of_money
    # @attr [Ingenico::Direct::SDK::Domain::Customer] customer
    # @attr [Ingenico::Direct::SDK::Domain::OrderReferences] references
    # @attr [Ingenico::Direct::SDK::Domain::Shipping] shipping
    # @attr [Ingenico::Direct::SDK::Domain::ShoppingCart] shopping_cart
    class Order < Ingenico::Direct::SDK::DataObject
      attr_accessor :additional_input
      attr_accessor :amount_of_money
      attr_accessor :customer
      attr_accessor :references
      attr_accessor :shipping
      attr_accessor :shopping_cart

      # @return (Hash)
      def to_h
        hash = super
        hash['additionalInput'] = @additional_input.to_h if @additional_input
        hash['amountOfMoney'] = @amount_of_money.to_h if @amount_of_money
        hash['customer'] = @customer.to_h if @customer
        hash['references'] = @references.to_h if @references
        hash['shipping'] = @shipping.to_h if @shipping
        hash['shoppingCart'] = @shopping_cart.to_h if @shopping_cart
        hash
      end

      def from_hash(hash)
        super
        if hash.key? 'additionalInput'
          raise TypeError, "value '%s' is not a Hash" % [hash['additionalInput']] unless hash['additionalInput'].is_a? Hash
          @additional_input = Ingenico::Direct::SDK::Domain::AdditionalOrderInput.new_from_hash(hash['additionalInput'])
        end
        if hash.key? 'amountOfMoney'
          raise TypeError, "value '%s' is not a Hash" % [hash['amountOfMoney']] unless hash['amountOfMoney'].is_a? Hash
          @amount_of_money = Ingenico::Direct::SDK::Domain::AmountOfMoney.new_from_hash(hash['amountOfMoney'])
        end
        if hash.key? 'customer'
          raise TypeError, "value '%s' is not a Hash" % [hash['customer']] unless hash['customer'].is_a? Hash
          @customer = Ingenico::Direct::SDK::Domain::Customer.new_from_hash(hash['customer'])
        end
        if hash.key? 'references'
          raise TypeError, "value '%s' is not a Hash" % [hash['references']] unless hash['references'].is_a? Hash
          @references = Ingenico::Direct::SDK::Domain::OrderReferences.new_from_hash(hash['references'])
        end
        if hash.key? 'shipping'
          raise TypeError, "value '%s' is not a Hash" % [hash['shipping']] unless hash['shipping'].is_a? Hash
          @shipping = Ingenico::Direct::SDK::Domain::Shipping.new_from_hash(hash['shipping'])
        end
        if hash.key? 'shoppingCart'
          raise TypeError, "value '%s' is not a Hash" % [hash['shoppingCart']] unless hash['shoppingCart'].is_a? Hash
          @shopping_cart = Ingenico::Direct::SDK::Domain::ShoppingCart.new_from_hash(hash['shoppingCart'])
        end
      end
    end
  end
end
