module Ingenico::Direct::SDK

  # Indicates that a payment is declined by the Ingenico ePayments platform or one of its downstream partners/acquirers.
  class DeclinedPaymentException < DeclinedTransactionException

    # Create a new DeclinedPaymentException.
    # @see ApiException#initialize
    def initialize(status_code, response_body, errors)
      super(status_code, response_body, errors&.error_id, errors&.errors, build_message(errors))
      @errors = errors
    end

    # The declined payment result returned by the Ingenico ePayments platform.
    # @return [Ingenico::Direct::SDK::Domain::CreatePaymentResult, nil]
    def payment_result
      @errors&.payment_result
    end

    private

    def build_message(errors)
      payment = errors&.payment_result&.payment
      if payment
        "declined payment '#{payment.id}' with status '#{payment.status}'"
      else
        'the Ingenico ePayments platform returned a declined payment response'
      end
    end
  end
end
