module Ingenico::Direct::SDK

  # Class that represents the URL request parameters.
  # Contains a method to add a name and value pair to a parameter array as a {Ingenico::Direct::SDK::RequestParam}.
  class ParamRequest
    # @return [Array<Ingenico::Direct::SDK::RequestParam>]
    def to_request_parameters
      raise NotImplementedError
    end
  end
end
