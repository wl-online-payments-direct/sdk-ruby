#
# This class was auto-generated from the API references found at
# https://support.direct.ingenico.com/documentation/api/reference/
#
require 'ingenico/direct/sdk/data_object'

module Ingenico::Direct::SDK
  module Domain

    # @attr [Array<String>] allowed_values
    class FixedListValidator < Ingenico::Direct::SDK::DataObject
      attr_accessor :allowed_values

      # @return (Hash)
      def to_h
        hash = super
        hash['allowedValues'] = @allowed_values unless @allowed_values.nil?
        hash
      end

      def from_hash(hash)
        super
        if hash.key? 'allowedValues'
          raise TypeError, "value '%s' is not an Array" % [hash['allowedValues']] unless hash['allowedValues'].is_a? Array
          @allowed_values = []
          hash['allowedValues'].each do |e|
            @allowed_values << e
          end
        end
      end
    end
  end
end
