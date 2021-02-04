#
# This class was auto-generated from the API references found at
# https://support.direct.ingenico.com/documentation/api/reference/
#
require 'ingenico/direct/sdk/data_object'

module Ingenico::Direct::SDK
  module Domain

    # @attr [Integer] max_value
    # @attr [Integer] min_value
    class RangeValidator < Ingenico::Direct::SDK::DataObject
      attr_accessor :max_value
      attr_accessor :min_value

      # @return (Hash)
      def to_h
        hash = super
        hash['maxValue'] = @max_value unless @max_value.nil?
        hash['minValue'] = @min_value unless @min_value.nil?
        hash
      end

      def from_hash(hash)
        super
        @max_value = hash['maxValue'] if hash.key? 'maxValue'
        @min_value = hash['minValue'] if hash.key? 'minValue'
      end
    end
  end
end
