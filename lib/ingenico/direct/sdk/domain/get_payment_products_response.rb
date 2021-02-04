#
# This class was auto-generated from the API references found at
# https://support.direct.ingenico.com/documentation/api/reference/
#
require 'ingenico/direct/sdk/data_object'
require 'ingenico/direct/sdk/domain/payment_product'

module Ingenico::Direct::SDK
  module Domain

    # @attr [Array<Ingenico::Direct::SDK::Domain::PaymentProduct>] payment_products
    class GetPaymentProductsResponse < Ingenico::Direct::SDK::DataObject
      attr_accessor :payment_products

      # @return (Hash)
      def to_h
        hash = super
        hash['paymentProducts'] = @payment_products.collect(&:to_h) if @payment_products
        hash
      end

      def from_hash(hash)
        super
        if hash.key? 'paymentProducts'
          raise TypeError, "value '%s' is not an Array" % [hash['paymentProducts']] unless hash['paymentProducts'].is_a? Array
          @payment_products = []
          hash['paymentProducts'].each do |e|
            @payment_products << Ingenico::Direct::SDK::Domain::PaymentProduct.new_from_hash(e)
          end
        end
      end
    end
  end
end
