#
# This class was auto-generated from the API references found at
# https://support.direct.ingenico.com/documentation/api/reference/
#
require 'ingenico/direct/sdk/data_object'
require 'ingenico/direct/sdk/domain/payment_product130_specific_three_d_secure'

module Ingenico::Direct::SDK
  module Domain

    # @attr [Ingenico::Direct::SDK::Domain::PaymentProduct130SpecificThreeDSecure] three_d_secure
    class PaymentProduct130SpecificInput < Ingenico::Direct::SDK::DataObject
      attr_accessor :three_d_secure

      # @return (Hash)
      def to_h
        hash = super
        hash['threeDSecure'] = @three_d_secure.to_h if @three_d_secure
        hash
      end

      def from_hash(hash)
        super
        if hash.key? 'threeDSecure'
          raise TypeError, "value '%s' is not a Hash" % [hash['threeDSecure']] unless hash['threeDSecure'].is_a? Hash
          @three_d_secure = Ingenico::Direct::SDK::Domain::PaymentProduct130SpecificThreeDSecure.new_from_hash(hash['threeDSecure'])
        end
      end
    end
  end
end
