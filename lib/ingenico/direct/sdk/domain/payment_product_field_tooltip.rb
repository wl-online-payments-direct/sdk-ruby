#
# This class was auto-generated from the API references found at
# https://support.direct.ingenico.com/documentation/api/reference/
#
require 'ingenico/direct/sdk/data_object'

module Ingenico::Direct::SDK
  module Domain

    # @attr [String] image
    # @attr [String] label
    class PaymentProductFieldTooltip < Ingenico::Direct::SDK::DataObject
      attr_accessor :image
      attr_accessor :label

      # @return (Hash)
      def to_h
        hash = super
        hash['image'] = @image unless @image.nil?
        hash['label'] = @label unless @label.nil?
        hash
      end

      def from_hash(hash)
        super
        @image = hash['image'] if hash.key? 'image'
        @label = hash['label'] if hash.key? 'label'
      end
    end
  end
end
