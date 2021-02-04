#
# This class was auto-generated from the API references found at
# https://support.direct.ingenico.com/documentation/api/reference/
#
require 'ingenico/direct/sdk/api_resource'
require 'ingenico/direct/sdk/response_exception'
require 'ingenico/direct/sdk/domain/error_response'
require 'ingenico/direct/sdk/domain/get_payment_product_groups_response'
require 'ingenico/direct/sdk/domain/payment_product_group'
require 'ingenico/direct/sdk/merchant/productgroups/get_product_group_params'
require 'ingenico/direct/sdk/merchant/productgroups/get_product_groups_params'

module Ingenico::Direct::SDK
  module Merchant
    module ProductGroups

      # ProductGroups client. Thread-safe.
      class ProductGroupsClient < Ingenico::Direct::SDK::ApiResource

        # @param parent        [Ingenico::Direct::SDK::ApiResource]
        # @param path_context  [Hash, nil]
        def initialize(parent, path_context = nil)
          super(parent, path_context)
        end

        # Resource /v2/!{merchantId}/productgroups - {https://support.direct.ingenico.com/documentation/api/reference#operation/GetProductGroups Get product groups}
        # @param query   [Ingenico::Direct::SDK::Merchant::ProductGroups::GetProductGroupsParams]
        # @param context [Ingenico::Direct::SDK::CallContext]
        # @return [Ingenico::Direct::SDK::Domain::GetPaymentProductGroupsResponse]
        # @raise [Ingenico::Direct::SDK::ValidationException] if the request was not correct and couldn't be processed (HTTP status code 400)
        # @raise [Ingenico::Direct::SDK::AuthorizationException] if the request was not allowed (HTTP status code 403)
        # @raise [Ingenico::Direct::SDK::IdempotenceException] if an idempotent request caused a conflict (HTTP status code 409)
        # @raise [Ingenico::Direct::SDK::ReferenceException] if an object was attempted to be referenced that doesn't exist or has been removed,
        #        or there was a conflict (HTTP status code 404, 409 or 410)
        # @raise [Ingenico::Direct::SDK::GlobalCollectException] if something went wrong at the Ingenico ePayments platform,
        #        the Ingenico ePayments platform was unable to process a message from a downstream partner/acquirer,
        #        or the service that you're trying to reach is temporary unavailable (HTTP status code 500, 502 or 503)
        # @raise [Ingenico::Direct::SDK::ApiException]if the Ingenico ePayments platform returned any other error
        def get_product_groups(query, context = nil)
          uri = instantiate_uri('/v2/{merchantId}/productgroups')
          @communicator.get(
            uri,
            client_headers,
            query,
            Ingenico::Direct::SDK::Domain::GetPaymentProductGroupsResponse,
            context
          )
        rescue ResponseException => e
          error_type = Ingenico::Direct::SDK::Domain::ErrorResponse
          error_object = @communicator.marshaller.unmarshal(e.body, error_type)
          raise create_exception(e.status_code, e.body, error_object, context)
        end

        # Resource /v2/!{merchantId}/productgroups/!{paymentProductGroupId} - {https://support.direct.ingenico.com/documentation/api/reference#operation/GetProductGroup Get product group}
        # @param payment_product_group_id [String]
        # @param query                    [Ingenico::Direct::SDK::Merchant::ProductGroups::GetProductGroupParams]
        # @param context                  [Ingenico::Direct::SDK::CallContext]
        # @return [Ingenico::Direct::SDK::Domain::PaymentProductGroup]
        # @raise [Ingenico::Direct::SDK::ValidationException] if the request was not correct and couldn't be processed (HTTP status code 400)
        # @raise [Ingenico::Direct::SDK::AuthorizationException] if the request was not allowed (HTTP status code 403)
        # @raise [Ingenico::Direct::SDK::IdempotenceException] if an idempotent request caused a conflict (HTTP status code 409)
        # @raise [Ingenico::Direct::SDK::ReferenceException] if an object was attempted to be referenced that doesn't exist or has been removed,
        #        or there was a conflict (HTTP status code 404, 409 or 410)
        # @raise [Ingenico::Direct::SDK::GlobalCollectException] if something went wrong at the Ingenico ePayments platform,
        #        the Ingenico ePayments platform was unable to process a message from a downstream partner/acquirer,
        #        or the service that you're trying to reach is temporary unavailable (HTTP status code 500, 502 or 503)
        # @raise [Ingenico::Direct::SDK::ApiException]if the Ingenico ePayments platform returned any other error
        def get_product_group(payment_product_group_id, query, context = nil)
          path_context = {
            'paymentProductGroupId'.freeze => payment_product_group_id,
          }
          uri = instantiate_uri('/v2/{merchantId}/productgroups/{paymentProductGroupId}', path_context)
          @communicator.get(
            uri,
            client_headers,
            query,
            Ingenico::Direct::SDK::Domain::PaymentProductGroup,
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
