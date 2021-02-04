#
# This class was auto-generated from the API references found at
# https://support.direct.ingenico.com/documentation/api/reference/
#
require 'ingenico/direct/sdk/data_object'

module Ingenico::Direct::SDK
  module Domain

    # @attr [String] brand
    class PaymentProduct5402SpecificOutput < Ingenico::Direct::SDK::DataObject
      attr_accessor :brand

      # @return (Hash)
      def to_h
        hash = super
        hash['brand'] = @brand unless @brand.nil?
        hash
      end

      def from_hash(hash)
        super
        @brand = hash['brand'] if hash.key? 'brand'
      end
    end
  end
end
