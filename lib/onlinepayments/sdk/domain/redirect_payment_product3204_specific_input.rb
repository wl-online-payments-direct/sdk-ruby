#
# This file was automatically generated.
#
require 'onlinepayments/sdk/domain/data_object'

module OnlinePayments
  module SDK
    module Domain
      # @attr [String] blik_code
      class RedirectPaymentProduct3204SpecificInput < OnlinePayments::SDK::Domain::DataObject

        attr_accessor :blik_code

        # @return (Hash)
        def to_h
          hash = super
          hash['blikCode'] = @blik_code unless @blik_code.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'blikCode'
            @blik_code = hash['blikCode']
          end
        end
      end
    end
  end
end
