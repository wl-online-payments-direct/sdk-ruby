#
# This class was auto-generated from the API references found at
# https://support.direct.ingenico.com/documentation/api/reference/
#
require 'ingenico/direct/sdk/data_object'
require 'ingenico/direct/sdk/domain/amount_of_money'
require 'ingenico/direct/sdk/domain/line_item_invoice_data'
require 'ingenico/direct/sdk/domain/order_line_details'

module Ingenico::Direct::SDK
  module Domain

    # @attr [Ingenico::Direct::SDK::Domain::AmountOfMoney] amount_of_money
    # @attr [Ingenico::Direct::SDK::Domain::LineItemInvoiceData] invoice_data
    # @attr [Ingenico::Direct::SDK::Domain::OrderLineDetails] order_line_details
    class LineItem < Ingenico::Direct::SDK::DataObject
      attr_accessor :amount_of_money
      attr_accessor :invoice_data
      attr_accessor :order_line_details

      # @return (Hash)
      def to_h
        hash = super
        hash['amountOfMoney'] = @amount_of_money.to_h if @amount_of_money
        hash['invoiceData'] = @invoice_data.to_h if @invoice_data
        hash['orderLineDetails'] = @order_line_details.to_h if @order_line_details
        hash
      end

      def from_hash(hash)
        super
        if hash.key? 'amountOfMoney'
          raise TypeError, "value '%s' is not a Hash" % [hash['amountOfMoney']] unless hash['amountOfMoney'].is_a? Hash
          @amount_of_money = Ingenico::Direct::SDK::Domain::AmountOfMoney.new_from_hash(hash['amountOfMoney'])
        end
        if hash.key? 'invoiceData'
          raise TypeError, "value '%s' is not a Hash" % [hash['invoiceData']] unless hash['invoiceData'].is_a? Hash
          @invoice_data = Ingenico::Direct::SDK::Domain::LineItemInvoiceData.new_from_hash(hash['invoiceData'])
        end
        if hash.key? 'orderLineDetails'
          raise TypeError, "value '%s' is not a Hash" % [hash['orderLineDetails']] unless hash['orderLineDetails'].is_a? Hash
          @order_line_details = Ingenico::Direct::SDK::Domain::OrderLineDetails.new_from_hash(hash['orderLineDetails'])
        end
      end
    end
  end
end
