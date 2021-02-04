#
# This class was auto-generated from the API references found at
# https://support.direct.ingenico.com/documentation/api/reference/
#
require 'ingenico/direct/sdk/api_resource'
require 'ingenico/direct/sdk/merchant/hostedcheckout/hosted_checkout_client'
require 'ingenico/direct/sdk/merchant/hostedtokenization/hosted_tokenization_client'
require 'ingenico/direct/sdk/merchant/payments/payments_client'
require 'ingenico/direct/sdk/merchant/payouts/payouts_client'
require 'ingenico/direct/sdk/merchant/productgroups/product_groups_client'
require 'ingenico/direct/sdk/merchant/products/products_client'
require 'ingenico/direct/sdk/merchant/services/services_client'
require 'ingenico/direct/sdk/merchant/sessions/sessions_client'
require 'ingenico/direct/sdk/merchant/tokens/tokens_client'

module Ingenico::Direct::SDK
  module Merchant

    # Merchant client. Thread-safe.
    class MerchantClient < Ingenico::Direct::SDK::ApiResource

      # @param parent        [Ingenico::Direct::SDK::ApiResource]
      # @param path_context  [Hash, nil]
      def initialize(parent, path_context = nil)
        super(parent, path_context)
      end

      # Resource /v2/!{merchantId}/products
      # @return [Ingenico::Direct::SDK::Merchant::Products::ProductsClient]
      def products
        Ingenico::Direct::SDK::Merchant::Products::ProductsClient.new(self, nil)
      end

      # Resource /v2/!{merchantId}/sessions
      # @return [Ingenico::Direct::SDK::Merchant::Sessions::SessionsClient]
      def sessions
        Ingenico::Direct::SDK::Merchant::Sessions::SessionsClient.new(self, nil)
      end

      # Resource /v2/!{merchantId}/payouts
      # @return [Ingenico::Direct::SDK::Merchant::Payouts::PayoutsClient]
      def payouts
        Ingenico::Direct::SDK::Merchant::Payouts::PayoutsClient.new(self, nil)
      end

      # Resource /v2/!{merchantId}/payments
      # @return [Ingenico::Direct::SDK::Merchant::Payments::PaymentsClient]
      def payments
        Ingenico::Direct::SDK::Merchant::Payments::PaymentsClient.new(self, nil)
      end

      # Resource /v2/!{merchantId}/services/testconnection
      # @return [Ingenico::Direct::SDK::Merchant::Services::ServicesClient]
      def services
        Ingenico::Direct::SDK::Merchant::Services::ServicesClient.new(self, nil)
      end

      # Resource /v2/!{merchantId}/productgroups
      # @return [Ingenico::Direct::SDK::Merchant::ProductGroups::ProductGroupsClient]
      def product_groups
        Ingenico::Direct::SDK::Merchant::ProductGroups::ProductGroupsClient.new(self, nil)
      end

      # Resource /v2/!{merchantId}/hostedtokenizations
      # @return [Ingenico::Direct::SDK::Merchant::HostedTokenization::HostedTokenizationClient]
      def hosted_tokenization
        Ingenico::Direct::SDK::Merchant::HostedTokenization::HostedTokenizationClient.new(self, nil)
      end

      # Resource /v2/!{merchantId}/tokens
      # @return [Ingenico::Direct::SDK::Merchant::Tokens::TokensClient]
      def tokens
        Ingenico::Direct::SDK::Merchant::Tokens::TokensClient.new(self, nil)
      end

      # Resource /v2/!{merchantId}/hostedcheckouts
      # @return [Ingenico::Direct::SDK::Merchant::HostedCheckout::HostedCheckoutClient]
      def hosted_checkout
        Ingenico::Direct::SDK::Merchant::HostedCheckout::HostedCheckoutClient.new(self, nil)
      end
    end
  end
end
