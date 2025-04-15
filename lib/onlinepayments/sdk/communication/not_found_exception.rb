module OnlinePayments
  module SDK
    module Communication
      # Raised when a resource is not found on the Online Payments platform.
      # This error corresponds to a 404 HTTP response.
      #
      # @attr [Exception] cause The error that is the cause of this error.
      class NotFoundException < RuntimeError

        def initialize(cause, message = nil)
          super(message)
          @cause = cause
        end

        attr_accessor :cause
      end
    end
  end
end
