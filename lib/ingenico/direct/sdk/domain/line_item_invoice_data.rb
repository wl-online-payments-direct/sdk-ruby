#
# This class was auto-generated from the API references found at
# https://support.direct.ingenico.com/documentation/api/reference/
#
require 'ingenico/direct/sdk/data_object'

module Ingenico::Direct::SDK
  module Domain

    # @attr [String] description
    class LineItemInvoiceData < Ingenico::Direct::SDK::DataObject
      attr_accessor :description

      # @return (Hash)
      def to_h
        hash = super
        hash['description'] = @description unless @description.nil?
        hash
      end

      def from_hash(hash)
        super
        @description = hash['description'] if hash.key? 'description'
      end
    end
  end
end
