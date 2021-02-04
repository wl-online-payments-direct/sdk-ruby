#
# This class was auto-generated from the API references found at
# https://support.direct.ingenico.com/documentation/api/reference/
#
require 'ingenico/direct/sdk/data_object'
require 'ingenico/direct/sdk/domain/amount_breakdown'
require 'ingenico/direct/sdk/domain/gift_card_purchase'
require 'ingenico/direct/sdk/domain/line_item'

module Ingenico::Direct::SDK
  module Domain

    # @attr [Array<Ingenico::Direct::SDK::Domain::AmountBreakdown>] amount_breakdown
    # @attr [Ingenico::Direct::SDK::Domain::GiftCardPurchase] gift_card_purchase
    # @attr [true/false] is_pre_order
    # @attr [Array<Ingenico::Direct::SDK::Domain::LineItem>] items
    # @attr [String] pre_order_item_availability_date
    # @attr [true/false] re_order_indicator
    class ShoppingCart < Ingenico::Direct::SDK::DataObject
      attr_accessor :amount_breakdown
      attr_accessor :gift_card_purchase
      attr_accessor :is_pre_order
      attr_accessor :items
      attr_accessor :pre_order_item_availability_date
      attr_accessor :re_order_indicator

      # @return (Hash)
      def to_h
        hash = super
        hash['amountBreakdown'] = @amount_breakdown.collect(&:to_h) if @amount_breakdown
        hash['giftCardPurchase'] = @gift_card_purchase.to_h if @gift_card_purchase
        hash['isPreOrder'] = @is_pre_order unless @is_pre_order.nil?
        hash['items'] = @items.collect(&:to_h) if @items
        hash['preOrderItemAvailabilityDate'] = @pre_order_item_availability_date unless @pre_order_item_availability_date.nil?
        hash['reOrderIndicator'] = @re_order_indicator unless @re_order_indicator.nil?
        hash
      end

      def from_hash(hash)
        super
        if hash.key? 'amountBreakdown'
          raise TypeError, "value '%s' is not an Array" % [hash['amountBreakdown']] unless hash['amountBreakdown'].is_a? Array
          @amount_breakdown = []
          hash['amountBreakdown'].each do |e|
            @amount_breakdown << Ingenico::Direct::SDK::Domain::AmountBreakdown.new_from_hash(e)
          end
        end
        if hash.key? 'giftCardPurchase'
          raise TypeError, "value '%s' is not a Hash" % [hash['giftCardPurchase']] unless hash['giftCardPurchase'].is_a? Hash
          @gift_card_purchase = Ingenico::Direct::SDK::Domain::GiftCardPurchase.new_from_hash(hash['giftCardPurchase'])
        end
        @is_pre_order = hash['isPreOrder'] if hash.key? 'isPreOrder'
        if hash.key? 'items'
          raise TypeError, "value '%s' is not an Array" % [hash['items']] unless hash['items'].is_a? Array
          @items = []
          hash['items'].each do |e|
            @items << Ingenico::Direct::SDK::Domain::LineItem.new_from_hash(e)
          end
        end
        @pre_order_item_availability_date = hash['preOrderItemAvailabilityDate'] if hash.key? 'preOrderItemAvailabilityDate'
        @re_order_indicator = hash['reOrderIndicator'] if hash.key? 'reOrderIndicator'
      end
    end
  end
end
