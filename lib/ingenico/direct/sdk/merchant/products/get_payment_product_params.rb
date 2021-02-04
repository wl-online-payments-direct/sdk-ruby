#
# This class was auto-generated from the API references found at
# https://support.direct.ingenico.com/documentation/api/reference/
#
require 'ingenico/direct/sdk/param_request'
require 'ingenico/direct/sdk/request_param'

module Ingenico::Direct::SDK
  module Merchant
    module Products

      # Query parameters for {https://support.direct.ingenico.com/documentation/api/reference#operation/GetPaymentProduct Get payment product}
      # @attr [String] country_code
      # @attr [String] currency_code
      # @attr [String] locale
      # @attr [Integer] amount
      # @attr [true/false] is_recurring
      # @attr [Array<String>] hide
      class GetPaymentProductParams < Ingenico::Direct::SDK::ParamRequest

        attr_accessor :country_code

        attr_accessor :currency_code

        attr_accessor :locale

        attr_accessor :amount

        attr_accessor :is_recurring

        attr_accessor :hide

        # Adds the parameter _value_ to the _hide_ Array
        # @param value [String]
        def add_hide(value)
          unless @hide
            @hide = []
          end
          @hide << value
        end

        # @return [Array<Ingenico::Direct::SDK::RequestParam>] representing the attributes of this class
        def to_request_parameters
          result = []
          result << RequestParam.new('countryCode', @country_code) unless @country_code.nil?
          result << RequestParam.new('currencyCode', @currency_code) unless @currency_code.nil?
          result << RequestParam.new('locale', @locale) unless @locale.nil?
          result << RequestParam.new('amount', @amount.to_s) unless @amount.nil?
          result << RequestParam.new('isRecurring', @is_recurring.to_s) unless @is_recurring.nil?
          unless @hide.nil?
            @hide.each {|e| result << RequestParam.new('hide', e)}
          end
          result
        end
      end
    end
  end
end
