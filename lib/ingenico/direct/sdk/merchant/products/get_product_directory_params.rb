#
# This class was auto-generated from the API references found at
# https://support.direct.ingenico.com/documentation/api/reference/
#
require 'ingenico/direct/sdk/param_request'
require 'ingenico/direct/sdk/request_param'

module Ingenico::Direct::SDK
  module Merchant
    module Products

      # Query parameters for {https://support.direct.ingenico.com/documentation/api/reference#operation/GetProductDirectoryApi Get payment product directory}
      # @attr [String] country_code
      # @attr [String] currency_code
      class GetProductDirectoryParams < Ingenico::Direct::SDK::ParamRequest

        attr_accessor :country_code

        attr_accessor :currency_code

        # @return [Array<Ingenico::Direct::SDK::RequestParam>] representing the attributes of this class
        def to_request_parameters
          result = []
          result << RequestParam.new('countryCode', @country_code) unless @country_code.nil?
          result << RequestParam.new('currencyCode', @currency_code) unless @currency_code.nil?
          result
        end
      end
    end
  end
end
