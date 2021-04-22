#
# This class was auto-generated from the API references found at
# https://support.direct.ingenico.com/documentation/api/reference/
#
require 'ingenico/direct/sdk/api_resource'
require 'ingenico/direct/sdk/response_exception'
require 'ingenico/direct/sdk/domain/error_response'
require 'ingenico/direct/sdk/domain/get_iin_details_request'
require 'ingenico/direct/sdk/domain/get_iin_details_response'
require 'ingenico/direct/sdk/domain/test_connection'

module Ingenico::Direct::SDK
  module Merchant
    module Services

      # Services client. Thread-safe.
      class ServicesClient < Ingenico::Direct::SDK::ApiResource

        # @param parent        [Ingenico::Direct::SDK::ApiResource]
        # @param path_context  [Hash, nil]
        def initialize(parent, path_context = nil)
          super(parent, path_context)
        end

        # Resource /v2/!{merchantId}/services/testconnection - {https://support.direct.ingenico.com/documentation/api/reference#operation/TestConnectionApi Test connection}
        # @param context [Ingenico::Direct::SDK::CallContext]
        # @return [Ingenico::Direct::SDK::Domain::TestConnection]
        # @raise [Ingenico::Direct::SDK::ValidationException] if the request was not correct and couldn't be processed (HTTP status code 400)
        # @raise [Ingenico::Direct::SDK::AuthorizationException] if the request was not allowed (HTTP status code 403)
        # @raise [Ingenico::Direct::SDK::IdempotenceException] if an idempotent request caused a conflict (HTTP status code 409)
        # @raise [Ingenico::Direct::SDK::ReferenceException] if an object was attempted to be referenced that doesn't exist or has been removed,
        #        or there was a conflict (HTTP status code 404, 409 or 410)
        # @raise [Ingenico::Direct::SDK::GlobalCollectException] if something went wrong at the Ingenico ePayments platform,
        #        the Ingenico ePayments platform was unable to process a message from a downstream partner/acquirer,
        #        or the service that you're trying to reach is temporary unavailable (HTTP status code 500, 502 or 503)
        # @raise [Ingenico::Direct::SDK::ApiException]if the Ingenico ePayments platform returned any other error
        def test_connection(context = nil)
          uri = instantiate_uri('/v2/{merchantId}/services/testconnection')
          @communicator.get(
            uri,
            client_headers,
            nil,
            Ingenico::Direct::SDK::Domain::TestConnection,
            context
          )
        rescue ResponseException => e
          error_type = Ingenico::Direct::SDK::Domain::ErrorResponse
          error_object = @communicator.marshaller.unmarshal(e.body, error_type)
          raise create_exception(e.status_code, e.body, error_object, context)
        end

        # Resource /v2/!{merchantId}/services/getIINdetails - {https://support.direct.ingenico.com/documentation/api/reference#operation/GetIINDetailsApi Get IIN details}
        # @param body    [Ingenico::Direct::SDK::Domain::GetIINDetailsRequest]
        # @param context [Ingenico::Direct::SDK::CallContext]
        # @return [Ingenico::Direct::SDK::Domain::GetIINDetailsResponse]
        # @raise [Ingenico::Direct::SDK::ValidationException] if the request was not correct and couldn't be processed (HTTP status code 400)
        # @raise [Ingenico::Direct::SDK::AuthorizationException] if the request was not allowed (HTTP status code 403)
        # @raise [Ingenico::Direct::SDK::IdempotenceException] if an idempotent request caused a conflict (HTTP status code 409)
        # @raise [Ingenico::Direct::SDK::ReferenceException] if an object was attempted to be referenced that doesn't exist or has been removed,
        #        or there was a conflict (HTTP status code 404, 409 or 410)
        # @raise [Ingenico::Direct::SDK::GlobalCollectException] if something went wrong at the Ingenico ePayments platform,
        #        the Ingenico ePayments platform was unable to process a message from a downstream partner/acquirer,
        #        or the service that you're trying to reach is temporary unavailable (HTTP status code 500, 502 or 503)
        # @raise [Ingenico::Direct::SDK::ApiException]if the Ingenico ePayments platform returned any other error
        def get_iin_details(body, context = nil)
          uri = instantiate_uri('/v2/{merchantId}/services/getIINdetails')
          @communicator.post(
            uri,
            client_headers,
            nil,
            body,
            Ingenico::Direct::SDK::Domain::GetIINDetailsResponse,
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
