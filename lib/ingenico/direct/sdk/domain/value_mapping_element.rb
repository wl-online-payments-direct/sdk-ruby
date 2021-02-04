#
# This class was auto-generated from the API references found at
# https://support.direct.ingenico.com/documentation/api/reference/
#
require 'ingenico/direct/sdk/data_object'
require 'ingenico/direct/sdk/domain/payment_product_field_display_element'

module Ingenico::Direct::SDK
  module Domain

    # @attr [Array<Ingenico::Direct::SDK::Domain::PaymentProductFieldDisplayElement>] display_elements
    # @attr [String] value
    class ValueMappingElement < Ingenico::Direct::SDK::DataObject
      attr_accessor :display_elements
      attr_accessor :value

      # @return (Hash)
      def to_h
        hash = super
        hash['displayElements'] = @display_elements.collect(&:to_h) if @display_elements
        hash['value'] = @value unless @value.nil?
        hash
      end

      def from_hash(hash)
        super
        if hash.key? 'displayElements'
          raise TypeError, "value '%s' is not an Array" % [hash['displayElements']] unless hash['displayElements'].is_a? Array
          @display_elements = []
          hash['displayElements'].each do |e|
            @display_elements << Ingenico::Direct::SDK::Domain::PaymentProductFieldDisplayElement.new_from_hash(e)
          end
        end
        @value = hash['value'] if hash.key? 'value'
      end
    end
  end
end
