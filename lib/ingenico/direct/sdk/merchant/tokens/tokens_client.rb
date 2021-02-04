#
# This class was auto-generated from the API references found at
# https://support.direct.ingenico.com/documentation/api/reference/
#
require 'ingenico/direct/sdk/api_resource'
require 'ingenico/direct/sdk/response_exception'
require 'ingenico/direct/sdk/domain/create_token_request'
require 'ingenico/direct/sdk/domain/created_token_response'
require 'ingenico/direct/sdk/domain/error_response'
require 'ingenico/direct/sdk/domain/token_response'

module Ingenico::Direct::SDK
  module Merchant
    module Tokens

      # Tokens client. Thread-safe.
      class TokensClient < Ingenico::Direct::SDK::ApiResource

        # @param parent        [Ingenico::Direct::SDK::ApiResource]
        # @param path_context  [Hash, nil]
        def initialize(parent, path_context = nil)
          super(parent, path_context)
        end

        # Resource /v2/!{merchantId}/tokens - {https://support.direct.ingenico.com/documentation/api/reference#operation/CreateTokenApi Create token}
        # @param body    [Ingenico::Direct::SDK::Domain::CreateTokenRequest]
        # @param context [Ingenico::Direct::SDK::CallContext]
        # @return [Ingenico::Direct::SDK::Domain::CreatedTokenResponse]
        # @raise [Ingenico::Direct::SDK::ValidationException] if the request was not correct and couldn't be processed (HTTP status code 400)
        # @raise [Ingenico::Direct::SDK::AuthorizationException] if the request was not allowed (HTTP status code 403)
        # @raise [Ingenico::Direct::SDK::IdempotenceException] if an idempotent request caused a conflict (HTTP status code 409)
        # @raise [Ingenico::Direct::SDK::ReferenceException] if an object was attempted to be referenced that doesn't exist or has been removed,
        #        or there was a conflict (HTTP status code 404, 409 or 410)
        # @raise [Ingenico::Direct::SDK::GlobalCollectException] if something went wrong at the Ingenico ePayments platform,
        #        the Ingenico ePayments platform was unable to process a message from a downstream partner/acquirer,
        #        or the service that you're trying to reach is temporary unavailable (HTTP status code 500, 502 or 503)
        # @raise [Ingenico::Direct::SDK::ApiException]if the Ingenico ePayments platform returned any other error
        def create_token(body, context = nil)
          uri = instantiate_uri('/v2/{merchantId}/tokens')
          @communicator.post(
            uri,
            client_headers,
            nil,
            body,
            Ingenico::Direct::SDK::Domain::CreatedTokenResponse,
            context
          )
        rescue ResponseException => e
          error_type = Ingenico::Direct::SDK::Domain::ErrorResponse
          error_object = @communicator.marshaller.unmarshal(e.body, error_type)
          raise create_exception(e.status_code, e.body, error_object, context)
        end

        # Resource /v2/!{merchantId}/tokens/!{tokenId} - {https://support.direct.ingenico.com/documentation/api/reference#operation/GetTokenApi Get token}
        # @param token_id [String]
        # @param context  [Ingenico::Direct::SDK::CallContext]
        # @return [Ingenico::Direct::SDK::Domain::TokenResponse]
        # @raise [Ingenico::Direct::SDK::ValidationException] if the request was not correct and couldn't be processed (HTTP status code 400)
        # @raise [Ingenico::Direct::SDK::AuthorizationException] if the request was not allowed (HTTP status code 403)
        # @raise [Ingenico::Direct::SDK::IdempotenceException] if an idempotent request caused a conflict (HTTP status code 409)
        # @raise [Ingenico::Direct::SDK::ReferenceException] if an object was attempted to be referenced that doesn't exist or has been removed,
        #        or there was a conflict (HTTP status code 404, 409 or 410)
        # @raise [Ingenico::Direct::SDK::GlobalCollectException] if something went wrong at the Ingenico ePayments platform,
        #        the Ingenico ePayments platform was unable to process a message from a downstream partner/acquirer,
        #        or the service that you're trying to reach is temporary unavailable (HTTP status code 500, 502 or 503)
        # @raise [Ingenico::Direct::SDK::ApiException]if the Ingenico ePayments platform returned any other error
        def get_token(token_id, context = nil)
          path_context = {
            'tokenId'.freeze => token_id,
          }
          uri = instantiate_uri('/v2/{merchantId}/tokens/{tokenId}', path_context)
          @communicator.get(
            uri,
            client_headers,
            nil,
            Ingenico::Direct::SDK::Domain::TokenResponse,
            context
          )
        rescue ResponseException => e
          error_type = Ingenico::Direct::SDK::Domain::ErrorResponse
          error_object = @communicator.marshaller.unmarshal(e.body, error_type)
          raise create_exception(e.status_code, e.body, error_object, context)
        end

        # Resource /v2/!{merchantId}/tokens/!{tokenId} - {https://support.direct.ingenico.com/documentation/api/reference#operation/DeleteTokenApi Delete token}
        # @param token_id [String]
        # @param context  [Ingenico::Direct::SDK::CallContext]
        # @raise [Ingenico::Direct::SDK::ValidationException] if the request was not correct and couldn't be processed (HTTP status code 400)
        # @raise [Ingenico::Direct::SDK::AuthorizationException] if the request was not allowed (HTTP status code 403)
        # @raise [Ingenico::Direct::SDK::IdempotenceException] if an idempotent request caused a conflict (HTTP status code 409)
        # @raise [Ingenico::Direct::SDK::ReferenceException] if an object was attempted to be referenced that doesn't exist or has been removed,
        #        or there was a conflict (HTTP status code 404, 409 or 410)
        # @raise [Ingenico::Direct::SDK::GlobalCollectException] if something went wrong at the Ingenico ePayments platform,
        #        the Ingenico ePayments platform was unable to process a message from a downstream partner/acquirer,
        #        or the service that you're trying to reach is temporary unavailable (HTTP status code 500, 502 or 503)
        # @raise [Ingenico::Direct::SDK::ApiException]if the Ingenico ePayments platform returned any other error
        def delete_token(token_id, context = nil)
          path_context = {
            'tokenId'.freeze => token_id,
          }
          uri = instantiate_uri('/v2/{merchantId}/tokens/{tokenId}', path_context)
          @communicator.delete(
            uri,
            client_headers,
            nil,
            nil,
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
