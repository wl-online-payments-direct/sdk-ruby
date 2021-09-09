#
# This class was auto-generated from the API references found at
# https://support.direct.ingenico.com/documentation/api/reference/
#
require 'ingenico/direct/sdk/api_resource'
require 'ingenico/direct/sdk/response_exception'
require 'ingenico/direct/sdk/domain/cancel_payment_response'
require 'ingenico/direct/sdk/domain/capture_payment_request'
require 'ingenico/direct/sdk/domain/capture_response'
require 'ingenico/direct/sdk/domain/captures_response'
require 'ingenico/direct/sdk/domain/complete_payment_request'
require 'ingenico/direct/sdk/domain/complete_payment_response'
require 'ingenico/direct/sdk/domain/create_payment_request'
require 'ingenico/direct/sdk/domain/create_payment_response'
require 'ingenico/direct/sdk/domain/error_response'
require 'ingenico/direct/sdk/domain/payment_details_response'
require 'ingenico/direct/sdk/domain/payment_error_response'
require 'ingenico/direct/sdk/domain/payment_response'
require 'ingenico/direct/sdk/domain/refund_error_response'
require 'ingenico/direct/sdk/domain/refund_request'
require 'ingenico/direct/sdk/domain/refund_response'
require 'ingenico/direct/sdk/domain/refunds_response'

module Ingenico::Direct::SDK
  module Merchant
    module Payments

      # Payments client. Thread-safe.
      class PaymentsClient < Ingenico::Direct::SDK::ApiResource

        # @param parent        [Ingenico::Direct::SDK::ApiResource]
        # @param path_context  [Hash, nil]
        def initialize(parent, path_context = nil)
          super(parent, path_context)
        end

        # Resource /v2/!{merchantId}/payments - {https://support.direct.ingenico.com/documentation/api/reference#operation/CreatePaymentApi Create payment}
        # @param body    [Ingenico::Direct::SDK::Domain::CreatePaymentRequest]
        # @param context [Ingenico::Direct::SDK::CallContext]
        # @return [Ingenico::Direct::SDK::Domain::CreatePaymentResponse]
        # @raise [Ingenico::Direct::SDK::ValidationException] if the request was not correct and couldn't be processed (HTTP status code 400)
        # @raise [Ingenico::Direct::SDK::AuthorizationException] if the request was not allowed (HTTP status code 403)
        # @raise [Ingenico::Direct::SDK::IdempotenceException] if an idempotent request caused a conflict (HTTP status code 409)
        # @raise [Ingenico::Direct::SDK::ReferenceException] if an object was attempted to be referenced that doesn't exist or has been removed,
        #        or there was a conflict (HTTP status code 404, 409 or 410)
        # @raise [Ingenico::Direct::SDK::GlobalCollectException] if something went wrong at the Ingenico ePayments platform,
        #        the Ingenico ePayments platform was unable to process a message from a downstream partner/acquirer,
        #        or the service that you're trying to reach is temporary unavailable (HTTP status code 500, 502 or 503)
        # @raise [Ingenico::Direct::SDK::ApiException]if the Ingenico ePayments platform returned any other error
        def create_payment(body, context = nil)
          uri = instantiate_uri('/v2/{merchantId}/payments')
          @communicator.post(
            uri,
            client_headers,
            nil,
            body,
            Ingenico::Direct::SDK::Domain::CreatePaymentResponse,
            context
          )
        rescue ResponseException => e
          error_type = Ingenico::Direct::SDK::Domain::PaymentErrorResponse
          error_object = @communicator.marshaller.unmarshal(e.body, error_type)
          raise create_exception(e.status_code, e.body, error_object, context)
        end

        # Resource /v2/!{merchantId}/payments/!{paymentId} - {https://support.direct.ingenico.com/documentation/api/reference#operation/GetPaymentApi Get payment}
        # @param payment_id [String]
        # @param context    [Ingenico::Direct::SDK::CallContext]
        # @return [Ingenico::Direct::SDK::Domain::PaymentResponse]
        # @raise [Ingenico::Direct::SDK::ValidationException] if the request was not correct and couldn't be processed (HTTP status code 400)
        # @raise [Ingenico::Direct::SDK::AuthorizationException] if the request was not allowed (HTTP status code 403)
        # @raise [Ingenico::Direct::SDK::IdempotenceException] if an idempotent request caused a conflict (HTTP status code 409)
        # @raise [Ingenico::Direct::SDK::ReferenceException] if an object was attempted to be referenced that doesn't exist or has been removed,
        #        or there was a conflict (HTTP status code 404, 409 or 410)
        # @raise [Ingenico::Direct::SDK::GlobalCollectException] if something went wrong at the Ingenico ePayments platform,
        #        the Ingenico ePayments platform was unable to process a message from a downstream partner/acquirer,
        #        or the service that you're trying to reach is temporary unavailable (HTTP status code 500, 502 or 503)
        # @raise [Ingenico::Direct::SDK::ApiException]if the Ingenico ePayments platform returned any other error
        def get_payment(payment_id, context = nil)
          path_context = {
            'paymentId'.freeze => payment_id,
          }
          uri = instantiate_uri('/v2/{merchantId}/payments/{paymentId}', path_context)
          @communicator.get(
            uri,
            client_headers,
            nil,
            Ingenico::Direct::SDK::Domain::PaymentResponse,
            context
          )
        rescue ResponseException => e
          error_type = Ingenico::Direct::SDK::Domain::ErrorResponse
          error_object = @communicator.marshaller.unmarshal(e.body, error_type)
          raise create_exception(e.status_code, e.body, error_object, context)
        end

        # Resource /v2/!{merchantId}/payments/!{paymentId}/complete - {https://support.direct.ingenico.com/documentation/api/reference#operation/CompletePaymentApi Complete payment}
        # @param payment_id [String]
        # @param body       [Ingenico::Direct::SDK::Domain::CompletePaymentRequest]
        # @param context    [Ingenico::Direct::SDK::CallContext]
        # @return [Ingenico::Direct::SDK::Domain::CompletePaymentResponse]
        # @raise [Ingenico::Direct::SDK::ValidationException] if the request was not correct and couldn't be processed (HTTP status code 400)
        # @raise [Ingenico::Direct::SDK::AuthorizationException] if the request was not allowed (HTTP status code 403)
        # @raise [Ingenico::Direct::SDK::IdempotenceException] if an idempotent request caused a conflict (HTTP status code 409)
        # @raise [Ingenico::Direct::SDK::ReferenceException] if an object was attempted to be referenced that doesn't exist or has been removed,
        #        or there was a conflict (HTTP status code 404, 409 or 410)
        # @raise [Ingenico::Direct::SDK::GlobalCollectException] if something went wrong at the Ingenico ePayments platform,
        #        the Ingenico ePayments platform was unable to process a message from a downstream partner/acquirer,
        #        or the service that you're trying to reach is temporary unavailable (HTTP status code 500, 502 or 503)
        # @raise [Ingenico::Direct::SDK::ApiException]if the Ingenico ePayments platform returned any other error
        def complete_payment(payment_id, body, context = nil)
          path_context = {
            'paymentId'.freeze => payment_id,
          }
          uri = instantiate_uri('/v2/{merchantId}/payments/{paymentId}/complete', path_context)
          @communicator.post(
            uri,
            client_headers,
            nil,
            body,
            Ingenico::Direct::SDK::Domain::CompletePaymentResponse,
            context
          )
        rescue ResponseException => e
          error_type = Ingenico::Direct::SDK::Domain::PaymentErrorResponse
          error_object = @communicator.marshaller.unmarshal(e.body, error_type)
          raise create_exception(e.status_code, e.body, error_object, context)
        end

        # Resource /v2/!{merchantId}/payments/!{paymentId}/cancel - {https://support.direct.ingenico.com/documentation/api/reference#operation/CancelPaymentApi Cancel payment}
        # @param payment_id [String]
        # @param context    [Ingenico::Direct::SDK::CallContext]
        # @return [Ingenico::Direct::SDK::Domain::CancelPaymentResponse]
        # @raise [Ingenico::Direct::SDK::ValidationException] if the request was not correct and couldn't be processed (HTTP status code 400)
        # @raise [Ingenico::Direct::SDK::AuthorizationException] if the request was not allowed (HTTP status code 403)
        # @raise [Ingenico::Direct::SDK::IdempotenceException] if an idempotent request caused a conflict (HTTP status code 409)
        # @raise [Ingenico::Direct::SDK::ReferenceException] if an object was attempted to be referenced that doesn't exist or has been removed,
        #        or there was a conflict (HTTP status code 404, 409 or 410)
        # @raise [Ingenico::Direct::SDK::GlobalCollectException] if something went wrong at the Ingenico ePayments platform,
        #        the Ingenico ePayments platform was unable to process a message from a downstream partner/acquirer,
        #        or the service that you're trying to reach is temporary unavailable (HTTP status code 500, 502 or 503)
        # @raise [Ingenico::Direct::SDK::ApiException]if the Ingenico ePayments platform returned any other error
        def cancel_payment(payment_id, context = nil)
          path_context = {
            'paymentId'.freeze => payment_id,
          }
          uri = instantiate_uri('/v2/{merchantId}/payments/{paymentId}/cancel', path_context)
          @communicator.post(
            uri,
            client_headers,
            nil,
            nil,
            Ingenico::Direct::SDK::Domain::CancelPaymentResponse,
            context
          )
        rescue ResponseException => e
          error_type = Ingenico::Direct::SDK::Domain::ErrorResponse
          error_object = @communicator.marshaller.unmarshal(e.body, error_type)
          raise create_exception(e.status_code, e.body, error_object, context)
        end

        # Resource /v2/!{merchantId}/payments/!{paymentId}/refund - {https://support.direct.ingenico.com/documentation/api/reference#operation/RefundPaymentApi Refund payment}
        # @param payment_id [String]
        # @param body       [Ingenico::Direct::SDK::Domain::RefundRequest]
        # @param context    [Ingenico::Direct::SDK::CallContext]
        # @return [Ingenico::Direct::SDK::Domain::RefundResponse]
        # @raise [Ingenico::Direct::SDK::ValidationException] if the request was not correct and couldn't be processed (HTTP status code 400)
        # @raise [Ingenico::Direct::SDK::AuthorizationException] if the request was not allowed (HTTP status code 403)
        # @raise [Ingenico::Direct::SDK::IdempotenceException] if an idempotent request caused a conflict (HTTP status code 409)
        # @raise [Ingenico::Direct::SDK::ReferenceException] if an object was attempted to be referenced that doesn't exist or has been removed,
        #        or there was a conflict (HTTP status code 404, 409 or 410)
        # @raise [Ingenico::Direct::SDK::GlobalCollectException] if something went wrong at the Ingenico ePayments platform,
        #        the Ingenico ePayments platform was unable to process a message from a downstream partner/acquirer,
        #        or the service that you're trying to reach is temporary unavailable (HTTP status code 500, 502 or 503)
        # @raise [Ingenico::Direct::SDK::ApiException]if the Ingenico ePayments platform returned any other error
        def refund_payment(payment_id, body, context = nil)
          path_context = {
            'paymentId'.freeze => payment_id,
          }
          uri = instantiate_uri('/v2/{merchantId}/payments/{paymentId}/refund', path_context)
          @communicator.post(
            uri,
            client_headers,
            nil,
            body,
            Ingenico::Direct::SDK::Domain::RefundResponse,
            context
          )
        rescue ResponseException => e
          error_type = Ingenico::Direct::SDK::Domain::RefundErrorResponse
          error_object = @communicator.marshaller.unmarshal(e.body, error_type)
          raise create_exception(e.status_code, e.body, error_object, context)
        end

        # Resource /v2/!{merchantId}/payments/!{paymentId}/capture - {https://support.direct.ingenico.com/documentation/api/reference#operation/CapturePaymentApi Capture payment}
        # @param payment_id [String]
        # @param body       [Ingenico::Direct::SDK::Domain::CapturePaymentRequest]
        # @param context    [Ingenico::Direct::SDK::CallContext]
        # @return [Ingenico::Direct::SDK::Domain::CaptureResponse]
        # @raise [Ingenico::Direct::SDK::ValidationException] if the request was not correct and couldn't be processed (HTTP status code 400)
        # @raise [Ingenico::Direct::SDK::AuthorizationException] if the request was not allowed (HTTP status code 403)
        # @raise [Ingenico::Direct::SDK::IdempotenceException] if an idempotent request caused a conflict (HTTP status code 409)
        # @raise [Ingenico::Direct::SDK::ReferenceException] if an object was attempted to be referenced that doesn't exist or has been removed,
        #        or there was a conflict (HTTP status code 404, 409 or 410)
        # @raise [Ingenico::Direct::SDK::GlobalCollectException] if something went wrong at the Ingenico ePayments platform,
        #        the Ingenico ePayments platform was unable to process a message from a downstream partner/acquirer,
        #        or the service that you're trying to reach is temporary unavailable (HTTP status code 500, 502 or 503)
        # @raise [Ingenico::Direct::SDK::ApiException]if the Ingenico ePayments platform returned any other error
        def capture_payment(payment_id, body, context = nil)
          path_context = {
            'paymentId'.freeze => payment_id,
          }
          uri = instantiate_uri('/v2/{merchantId}/payments/{paymentId}/capture', path_context)
          @communicator.post(
            uri,
            client_headers,
            nil,
            body,
            Ingenico::Direct::SDK::Domain::CaptureResponse,
            context
          )
        rescue ResponseException => e
          error_type = Ingenico::Direct::SDK::Domain::ErrorResponse
          error_object = @communicator.marshaller.unmarshal(e.body, error_type)
          raise create_exception(e.status_code, e.body, error_object, context)
        end

        # Resource /v2/!{merchantId}/payments/!{paymentId}/captures - {https://support.direct.ingenico.com/documentation/api/reference#operation/GetCapturesApi Get Captures Api}
        # @param payment_id [String]
        # @param context    [Ingenico::Direct::SDK::CallContext]
        # @return [Ingenico::Direct::SDK::Domain::CapturesResponse]
        # @raise [Ingenico::Direct::SDK::ValidationException] if the request was not correct and couldn't be processed (HTTP status code 400)
        # @raise [Ingenico::Direct::SDK::AuthorizationException] if the request was not allowed (HTTP status code 403)
        # @raise [Ingenico::Direct::SDK::IdempotenceException] if an idempotent request caused a conflict (HTTP status code 409)
        # @raise [Ingenico::Direct::SDK::ReferenceException] if an object was attempted to be referenced that doesn't exist or has been removed,
        #        or there was a conflict (HTTP status code 404, 409 or 410)
        # @raise [Ingenico::Direct::SDK::GlobalCollectException] if something went wrong at the Ingenico ePayments platform,
        #        the Ingenico ePayments platform was unable to process a message from a downstream partner/acquirer,
        #        or the service that you're trying to reach is temporary unavailable (HTTP status code 500, 502 or 503)
        # @raise [Ingenico::Direct::SDK::ApiException]if the Ingenico ePayments platform returned any other error
        def get_captures(payment_id, context = nil)
          path_context = {
            'paymentId'.freeze => payment_id,
          }
          uri = instantiate_uri('/v2/{merchantId}/payments/{paymentId}/captures', path_context)
          @communicator.get(
            uri,
            client_headers,
            nil,
            Ingenico::Direct::SDK::Domain::CapturesResponse,
            context
          )
        rescue ResponseException => e
          error_type = Ingenico::Direct::SDK::Domain::ErrorResponse
          error_object = @communicator.marshaller.unmarshal(e.body, error_type)
          raise create_exception(e.status_code, e.body, error_object, context)
        end

        # Resource /v2/!{merchantId}/payments/!{paymentId}/details - {https://support.direct.ingenico.com/documentation/api/reference#operation/GetPaymentDetailsApi Get payment details}
        # @param payment_id [String]
        # @param context    [Ingenico::Direct::SDK::CallContext]
        # @return [Ingenico::Direct::SDK::Domain::PaymentDetailsResponse]
        # @raise [Ingenico::Direct::SDK::ValidationException] if the request was not correct and couldn't be processed (HTTP status code 400)
        # @raise [Ingenico::Direct::SDK::AuthorizationException] if the request was not allowed (HTTP status code 403)
        # @raise [Ingenico::Direct::SDK::IdempotenceException] if an idempotent request caused a conflict (HTTP status code 409)
        # @raise [Ingenico::Direct::SDK::ReferenceException] if an object was attempted to be referenced that doesn't exist or has been removed,
        #        or there was a conflict (HTTP status code 404, 409 or 410)
        # @raise [Ingenico::Direct::SDK::GlobalCollectException] if something went wrong at the Ingenico ePayments platform,
        #        the Ingenico ePayments platform was unable to process a message from a downstream partner/acquirer,
        #        or the service that you're trying to reach is temporary unavailable (HTTP status code 500, 502 or 503)
        # @raise [Ingenico::Direct::SDK::ApiException]if the Ingenico ePayments platform returned any other error
        def get_payment_details(payment_id, context = nil)
          path_context = {
            'paymentId'.freeze => payment_id,
          }
          uri = instantiate_uri('/v2/{merchantId}/payments/{paymentId}/details', path_context)
          @communicator.get(
            uri,
            client_headers,
            nil,
            Ingenico::Direct::SDK::Domain::PaymentDetailsResponse,
            context
          )
        rescue ResponseException => e
          error_type = Ingenico::Direct::SDK::Domain::ErrorResponse
          error_object = @communicator.marshaller.unmarshal(e.body, error_type)
          raise create_exception(e.status_code, e.body, error_object, context)
        end

        # Resource /v2/!{merchantId}/payments/!{paymentId}/refunds - {https://support.direct.ingenico.com/documentation/api/reference#operation/GetRefundsApi Get Refunds Api}
        # @param payment_id [String]
        # @param context    [Ingenico::Direct::SDK::CallContext]
        # @return [Ingenico::Direct::SDK::Domain::RefundsResponse]
        # @raise [Ingenico::Direct::SDK::ValidationException] if the request was not correct and couldn't be processed (HTTP status code 400)
        # @raise [Ingenico::Direct::SDK::AuthorizationException] if the request was not allowed (HTTP status code 403)
        # @raise [Ingenico::Direct::SDK::IdempotenceException] if an idempotent request caused a conflict (HTTP status code 409)
        # @raise [Ingenico::Direct::SDK::ReferenceException] if an object was attempted to be referenced that doesn't exist or has been removed,
        #        or there was a conflict (HTTP status code 404, 409 or 410)
        # @raise [Ingenico::Direct::SDK::GlobalCollectException] if something went wrong at the Ingenico ePayments platform,
        #        the Ingenico ePayments platform was unable to process a message from a downstream partner/acquirer,
        #        or the service that you're trying to reach is temporary unavailable (HTTP status code 500, 502 or 503)
        # @raise [Ingenico::Direct::SDK::ApiException]if the Ingenico ePayments platform returned any other error
        def get_refunds(payment_id, context = nil)
          path_context = {
            'paymentId'.freeze => payment_id,
          }
          uri = instantiate_uri('/v2/{merchantId}/payments/{paymentId}/refunds', path_context)
          @communicator.get(
            uri,
            client_headers,
            nil,
            Ingenico::Direct::SDK::Domain::RefundsResponse,
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
