#
# This file was automatically generated.
#
require 'onlinepayments/sdk/domain/data_object'

module OnlinePayments
  module SDK
    module Domain
      # @attr [String] merchant_parameters
      # @attr [String] merchant_reference
      class PaymentReferences < OnlinePayments::SDK::Domain::DataObject

        attr_accessor :merchant_parameters

        attr_accessor :merchant_reference

        # @return (Hash)
        def to_h
          hash = super
          hash['merchantParameters'] = @merchant_parameters unless @merchant_parameters.nil?
          hash['merchantReference'] = @merchant_reference unless @merchant_reference.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'merchantParameters'
            @merchant_parameters = hash['merchantParameters']
          end
          if hash.has_key? 'merchantReference'
            @merchant_reference = hash['merchantReference']
          end
        end
      end
    end
  end
end
