#
# This class was auto-generated from the API references found at
# https://support.direct.ingenico.com/documentation/api/reference/
#
require 'ingenico/direct/sdk/data_object'
require 'ingenico/direct/sdk/domain/payment_product_filter'

module Ingenico::Direct::SDK
  module Domain

    # @attr [Ingenico::Direct::SDK::Domain::PaymentProductFilter] exclude
    # @attr [Ingenico::Direct::SDK::Domain::PaymentProductFilter] restrict_to
    class PaymentProductFiltersHostedCheckout < Ingenico::Direct::SDK::DataObject
      attr_accessor :exclude
      attr_accessor :restrict_to

      # @return (Hash)
      def to_h
        hash = super
        hash['exclude'] = @exclude.to_h if @exclude
        hash['restrictTo'] = @restrict_to.to_h if @restrict_to
        hash
      end

      def from_hash(hash)
        super
        if hash.key? 'exclude'
          raise TypeError, "value '%s' is not a Hash" % [hash['exclude']] unless hash['exclude'].is_a? Hash
          @exclude = Ingenico::Direct::SDK::Domain::PaymentProductFilter.new_from_hash(hash['exclude'])
        end
        if hash.key? 'restrictTo'
          raise TypeError, "value '%s' is not a Hash" % [hash['restrictTo']] unless hash['restrictTo'].is_a? Hash
          @restrict_to = Ingenico::Direct::SDK::Domain::PaymentProductFilter.new_from_hash(hash['restrictTo'])
        end
      end
    end
  end
end
