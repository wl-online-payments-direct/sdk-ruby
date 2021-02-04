#
# This class was auto-generated from the API references found at
# https://support.direct.ingenico.com/documentation/api/reference/
#
require 'ingenico/direct/sdk/data_object'
require 'ingenico/direct/sdk/domain/payment_product_group'

module Ingenico::Direct::SDK
  module Domain

    # @attr [Array<Ingenico::Direct::SDK::Domain::PaymentProductGroup>] payment_product_groups
    class GetPaymentProductGroupsResponse < Ingenico::Direct::SDK::DataObject
      attr_accessor :payment_product_groups

      # @return (Hash)
      def to_h
        hash = super
        hash['paymentProductGroups'] = @payment_product_groups.collect(&:to_h) if @payment_product_groups
        hash
      end

      def from_hash(hash)
        super
        if hash.key? 'paymentProductGroups'
          raise TypeError, "value '%s' is not an Array" % [hash['paymentProductGroups']] unless hash['paymentProductGroups'].is_a? Array
          @payment_product_groups = []
          hash['paymentProductGroups'].each do |e|
            @payment_product_groups << Ingenico::Direct::SDK::Domain::PaymentProductGroup.new_from_hash(e)
          end
        end
      end
    end
  end
end
