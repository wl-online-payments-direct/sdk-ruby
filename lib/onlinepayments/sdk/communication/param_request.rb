module OnlinePayments
  module SDK
    module Communication
      # Class that represents the URL request parameters.
      # Contains a method to add a name and value pair to a parameter array as a {OnlinePayments::SDK::Communication::RequestParam}.
      class ParamRequest
        # @return [Array<OnlinePayments::SDK::Communication::RequestParam>]
        def to_request_parameters
          raise NotImplementedError
        end
      end
    end
  end
end
