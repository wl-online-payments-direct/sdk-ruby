#
# This class was auto-generated from the API references found at
# https://support.direct.ingenico.com/documentation/api/reference/
#
require 'ingenico/direct/sdk/data_object'
require 'ingenico/direct/sdk/domain/payment_product_filters_hosted_checkout'

module Ingenico::Direct::SDK
  module Domain

    # @attr [true/false] is_recurring
    # @attr [String] locale
    # @attr [Ingenico::Direct::SDK::Domain::PaymentProductFiltersHostedCheckout] payment_product_filters
    # @attr [String] return_url
    # @attr [true/false] show_result_page
    # @attr [String] tokens
    # @attr [String] variant
    class HostedCheckoutSpecificInput < Ingenico::Direct::SDK::DataObject
      attr_accessor :is_recurring
      attr_accessor :locale
      attr_accessor :payment_product_filters
      attr_accessor :return_url
      attr_accessor :show_result_page
      attr_accessor :tokens
      attr_accessor :variant

      # @return (Hash)
      def to_h
        hash = super
        hash['isRecurring'] = @is_recurring unless @is_recurring.nil?
        hash['locale'] = @locale unless @locale.nil?
        hash['paymentProductFilters'] = @payment_product_filters.to_h if @payment_product_filters
        hash['returnUrl'] = @return_url unless @return_url.nil?
        hash['showResultPage'] = @show_result_page unless @show_result_page.nil?
        hash['tokens'] = @tokens unless @tokens.nil?
        hash['variant'] = @variant unless @variant.nil?
        hash
      end

      def from_hash(hash)
        super
        @is_recurring = hash['isRecurring'] if hash.key? 'isRecurring'
        @locale = hash['locale'] if hash.key? 'locale'
        if hash.key? 'paymentProductFilters'
          raise TypeError, "value '%s' is not a Hash" % [hash['paymentProductFilters']] unless hash['paymentProductFilters'].is_a? Hash
          @payment_product_filters = Ingenico::Direct::SDK::Domain::PaymentProductFiltersHostedCheckout.new_from_hash(hash['paymentProductFilters'])
        end
        @return_url = hash['returnUrl'] if hash.key? 'returnUrl'
        @show_result_page = hash['showResultPage'] if hash.key? 'showResultPage'
        @tokens = hash['tokens'] if hash.key? 'tokens'
        @variant = hash['variant'] if hash.key? 'variant'
      end
    end
  end
end
