#
# This class was auto-generated from the API references found at
# https://support.direct.ingenico.com/documentation/api/reference/
#
require 'ingenico/direct/sdk/data_object'

module Ingenico::Direct::SDK
  module Domain

    # @attr [String] regular_expression
    class RegularExpressionValidator < Ingenico::Direct::SDK::DataObject
      attr_accessor :regular_expression

      # @return (Hash)
      def to_h
        hash = super
        hash['regularExpression'] = @regular_expression unless @regular_expression.nil?
        hash
      end

      def from_hash(hash)
        super
        @regular_expression = hash['regularExpression'] if hash.key? 'regularExpression'
      end
    end
  end
end
