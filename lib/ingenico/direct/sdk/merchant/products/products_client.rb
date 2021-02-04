#
# This class was auto-generated from the API references found at
# https://support.direct.ingenico.com/documentation/api/reference/
#
require 'ingenico/direct/sdk/api_resource'
require 'ingenico/direct/sdk/response_exception'
require 'ingenico/direct/sdk/domain/error_response'
require 'ingenico/direct/sdk/domain/get_payment_products_response'
require 'ingenico/direct/sdk/domain/payment_product'
require 'ingenico/direct/sdk/domain/payment_product_networks_response'
require 'ingenico/direct/sdk/domain/product_directory'
require 'ingenico/direct/sdk/merchant/products/get_payment_product_networks_params'
require 'ingenico/direct/sdk/merchant/products/get_payment_product_params'
require 'ingenico/direct/sdk/merchant/products/get_payment_products_params'
require 'ingenico/direct/sdk/merchant/products/get_product_directory_params'

module Ingenico::Direct::SDK
  module Merchant
    module Products

      # Products client. Thread-safe.
      class ProductsClient < Ingenico::Direct::SDK::ApiResource

        # @param parent        [Ingenico::Direct::SDK::ApiResource]
        # @param path_context  [Hash, nil]
        def initialize(parent, path_context = nil)
          super(parent, path_context)
        end

        # Resource /v2/!{merchantId}/products - {https://support.direct.ingenico.com/documentation/api/reference#operation/GetPaymentProducts Get payment products}
        # @param query   [Ingenico::Direct::SDK::Merchant::Products::GetPaymentProductsParams]
        # @param context [Ingenico::Direct::SDK::CallContext]
        # @return [Ingenico::Direct::SDK::Domain::GetPaymentProductsResponse]
        # @raise [Ingenico::Direct::SDK::ValidationException] if the request was not correct and couldn't be processed (HTTP status code 400)
        # @raise [Ingenico::Direct::SDK::AuthorizationException] if the request was not allowed (HTTP status code 403)
        # @raise [Ingenico::Direct::SDK::IdempotenceException] if an idempotent request caused a conflict (HTTP status code 409)
        # @raise [Ingenico::Direct::SDK::ReferenceException] if an object was attempted to be referenced that doesn't exist or has been removed,
        #        or there was a conflict (HTTP status code 404, 409 or 410)
        # @raise [Ingenico::Direct::SDK::GlobalCollectException] if something went wrong at the Ingenico ePayments platform,
        #        the Ingenico ePayments platform was unable to process a message from a downstream partner/acquirer,
        #        or the service that you're trying to reach is temporary unavailable (HTTP status code 500, 502 or 503)
        # @raise [Ingenico::Direct::SDK::ApiException]if the Ingenico ePayments platform returned any other error
        def get_payment_products(query, context = nil)
          uri = instantiate_uri('/v2/{merchantId}/products')
          @communicator.get(
            uri,
            client_headers,
            query,
            Ingenico::Direct::SDK::Domain::GetPaymentProductsResponse,
            context
          )
        rescue ResponseException => e
          error_type = Ingenico::Direct::SDK::Domain::ErrorResponse
          error_object = @communicator.marshaller.unmarshal(e.body, error_type)
          raise create_exception(e.status_code, e.body, error_object, context)
        end

        # Resource /v2/!{merchantId}/products/!{paymentProductId} - {https://support.direct.ingenico.com/documentation/api/reference#operation/GetPaymentProduct Get payment product}
        # @param payment_product_id [Integer]
        # @param query              [Ingenico::Direct::SDK::Merchant::Products::GetPaymentProductParams]
        # @param context            [Ingenico::Direct::SDK::CallContext]
        # @return [Ingenico::Direct::SDK::Domain::PaymentProduct]
        # @raise [Ingenico::Direct::SDK::ValidationException] if the request was not correct and couldn't be processed (HTTP status code 400)
        # @raise [Ingenico::Direct::SDK::AuthorizationException] if the request was not allowed (HTTP status code 403)
        # @raise [Ingenico::Direct::SDK::IdempotenceException] if an idempotent request caused a conflict (HTTP status code 409)
        # @raise [Ingenico::Direct::SDK::ReferenceException] if an object was attempted to be referenced that doesn't exist or has been removed,
        #        or there was a conflict (HTTP status code 404, 409 or 410)
        # @raise [Ingenico::Direct::SDK::GlobalCollectException] if something went wrong at the Ingenico ePayments platform,
        #        the Ingenico ePayments platform was unable to process a message from a downstream partner/acquirer,
        #        or the service that you're trying to reach is temporary unavailable (HTTP status code 500, 502 or 503)
        # @raise [Ingenico::Direct::SDK::ApiException]if the Ingenico ePayments platform returned any other error
        def get_payment_product(payment_product_id, query, context = nil)
          path_context = {
            'paymentProductId'.freeze => payment_product_id.to_s,
          }
          uri = instantiate_uri('/v2/{merchantId}/products/{paymentProductId}', path_context)
          @communicator.get(
            uri,
            client_headers,
            query,
            Ingenico::Direct::SDK::Domain::PaymentProduct,
            context
          )
        rescue ResponseException => e
          error_type = Ingenico::Direct::SDK::Domain::ErrorResponse
          error_object = @communicator.marshaller.unmarshal(e.body, error_type)
          raise create_exception(e.status_code, e.body, error_object, context)
        end

        # Resource /v2/!{merchantId}/products/!{paymentProductId}/directory - {https://support.direct.ingenico.com/documentation/api/reference#operation/GetProductDirectoryApi Get payment product directory}
        # @param payment_product_id [Integer]
        # @param query              [Ingenico::Direct::SDK::Merchant::Products::GetProductDirectoryParams]
        # @param context            [Ingenico::Direct::SDK::CallContext]
        # @return [Ingenico::Direct::SDK::Domain::ProductDirectory]
        # @raise [Ingenico::Direct::SDK::ValidationException] if the request was not correct and couldn't be processed (HTTP status code 400)
        # @raise [Ingenico::Direct::SDK::AuthorizationException] if the request was not allowed (HTTP status code 403)
        # @raise [Ingenico::Direct::SDK::IdempotenceException] if an idempotent request caused a conflict (HTTP status code 409)
        # @raise [Ingenico::Direct::SDK::ReferenceException] if an object was attempted to be referenced that doesn't exist or has been removed,
        #        or there was a conflict (HTTP status code 404, 409 or 410)
        # @raise [Ingenico::Direct::SDK::GlobalCollectException] if something went wrong at the Ingenico ePayments platform,
        #        the Ingenico ePayments platform was unable to process a message from a downstream partner/acquirer,
        #        or the service that you're trying to reach is temporary unavailable (HTTP status code 500, 502 or 503)
        # @raise [Ingenico::Direct::SDK::ApiException]if the Ingenico ePayments platform returned any other error
        def get_product_directory(payment_product_id, query, context = nil)
          path_context = {
            'paymentProductId'.freeze => payment_product_id.to_s,
          }
          uri = instantiate_uri('/v2/{merchantId}/products/{paymentProductId}/directory', path_context)
          @communicator.get(
            uri,
            client_headers,
            query,
            Ingenico::Direct::SDK::Domain::ProductDirectory,
            context
          )
        rescue ResponseException => e
          error_type = Ingenico::Direct::SDK::Domain::ErrorResponse
          error_object = @communicator.marshaller.unmarshal(e.body, error_type)
          raise create_exception(e.status_code, e.body, error_object, context)
        end

        # Resource /v2/!{merchantId}/products/!{paymentProductId}/networks - {https://support.direct.ingenico.com/documentation/api/reference#operation/GetPaymentProductNetworks Get payment product networks}
        # @param payment_product_id [Integer]
        # @param query              [Ingenico::Direct::SDK::Merchant::Products::GetPaymentProductNetworksParams]
        # @param context            [Ingenico::Direct::SDK::CallContext]
        # @return [Ingenico::Direct::SDK::Domain::PaymentProductNetworksResponse]
        # @raise [Ingenico::Direct::SDK::ValidationException] if the request was not correct and couldn't be processed (HTTP status code 400)
        # @raise [Ingenico::Direct::SDK::AuthorizationException] if the request was not allowed (HTTP status code 403)
        # @raise [Ingenico::Direct::SDK::IdempotenceException] if an idempotent request caused a conflict (HTTP status code 409)
        # @raise [Ingenico::Direct::SDK::ReferenceException] if an object was attempted to be referenced that doesn't exist or has been removed,
        #        or there was a conflict (HTTP status code 404, 409 or 410)
        # @raise [Ingenico::Direct::SDK::GlobalCollectException] if something went wrong at the Ingenico ePayments platform,
        #        the Ingenico ePayments platform was unable to process a message from a downstream partner/acquirer,
        #        or the service that you're trying to reach is temporary unavailable (HTTP status code 500, 502 or 503)
        # @raise [Ingenico::Direct::SDK::ApiException]if the Ingenico ePayments platform returned any other error
        def get_payment_product_networks(payment_product_id, query, context = nil)
          path_context = {
            'paymentProductId'.freeze => payment_product_id.to_s,
          }
          uri = instantiate_uri('/v2/{merchantId}/products/{paymentProductId}/networks', path_context)
          @communicator.get(
            uri,
            client_headers,
            query,
            Ingenico::Direct::SDK::Domain::PaymentProductNetworksResponse,
            context
          )
        rescue ResponseException => e
          error_type = Ingenico::Direct::SDK::Domain::ErrorResponse
          error_object = @communicator.marshaller.unmarshal(e.body, error_type)
          raise create_exception(e.status_code, e.body, error_object, context)
        end
      end
    end
  end
end
