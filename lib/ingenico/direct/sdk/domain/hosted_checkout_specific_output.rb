#
# This class was auto-generated from the API references found at
# https://support.direct.ingenico.com/documentation/api/reference/
#
require 'ingenico/direct/sdk/data_object'

module Ingenico::Direct::SDK
  module Domain

    # @attr [String] hosted_checkout_id
    # @attr [String] variant
    class HostedCheckoutSpecificOutput < Ingenico::Direct::SDK::DataObject
      attr_accessor :hosted_checkout_id
      attr_accessor :variant

      # @return (Hash)
      def to_h
        hash = super
        hash['hostedCheckoutId'] = @hosted_checkout_id unless @hosted_checkout_id.nil?
        hash['variant'] = @variant unless @variant.nil?
        hash
      end

      def from_hash(hash)
        super
        @hosted_checkout_id = hash['hostedCheckoutId'] if hash.key? 'hostedCheckoutId'
        @variant = hash['variant'] if hash.key? 'variant'
      end
    end
  end
end
