#
# This class was auto-generated from the API references found at
# https://support.direct.ingenico.com/documentation/api/reference/
#
require 'ingenico/direct/sdk/data_object'
require 'ingenico/direct/sdk/domain/value_mapping_element'

module Ingenico::Direct::SDK
  module Domain

    # @attr [String] type
    # @attr [Array<Ingenico::Direct::SDK::Domain::ValueMappingElement>] value_mapping
    class PaymentProductFieldFormElement < Ingenico::Direct::SDK::DataObject
      attr_accessor :type
      attr_accessor :value_mapping

      # @return (Hash)
      def to_h
        hash = super
        hash['type'] = @type unless @type.nil?
        hash['valueMapping'] = @value_mapping.collect(&:to_h) if @value_mapping
        hash
      end

      def from_hash(hash)
        super
        @type = hash['type'] if hash.key? 'type'
        if hash.key? 'valueMapping'
          raise TypeError, "value '%s' is not an Array" % [hash['valueMapping']] unless hash['valueMapping'].is_a? Array
          @value_mapping = []
          hash['valueMapping'].each do |e|
            @value_mapping << Ingenico::Direct::SDK::Domain::ValueMappingElement.new_from_hash(e)
          end
        end
      end
    end
  end
end
