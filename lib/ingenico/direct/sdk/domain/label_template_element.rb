#
# This class was auto-generated from the API references found at
# https://support.direct.ingenico.com/documentation/api/reference/
#
require 'ingenico/direct/sdk/data_object'

module Ingenico::Direct::SDK
  module Domain

    # @attr [String] attribute_key
    # @attr [String] mask
    class LabelTemplateElement < Ingenico::Direct::SDK::DataObject
      attr_accessor :attribute_key
      attr_accessor :mask

      # @return (Hash)
      def to_h
        hash = super
        hash['attributeKey'] = @attribute_key unless @attribute_key.nil?
        hash['mask'] = @mask unless @mask.nil?
        hash
      end

      def from_hash(hash)
        super
        @attribute_key = hash['attributeKey'] if hash.key? 'attributeKey'
        @mask = hash['mask'] if hash.key? 'mask'
      end
    end
  end
end
