#
# This class was auto-generated from the API references found at
# https://support.direct.ingenico.com/documentation/api/reference/
#
require 'ingenico/direct/sdk/data_object'
require 'ingenico/direct/sdk/domain/token_card_data'

module Ingenico::Direct::SDK
  module Domain

    # @attr [String] alias
    # @attr [Ingenico::Direct::SDK::Domain::TokenCardData] data
    class TokenCard < Ingenico::Direct::SDK::DataObject
      attr_accessor :alias
      attr_accessor :data

      # @return (Hash)
      def to_h
        hash = super
        hash['alias'] = @alias unless @alias.nil?
        hash['data'] = @data.to_h if @data
        hash
      end

      def from_hash(hash)
        super
        @alias = hash['alias'] if hash.key? 'alias'
        if hash.key? 'data'
          raise TypeError, "value '%s' is not a Hash" % [hash['data']] unless hash['data'].is_a? Hash
          @data = Ingenico::Direct::SDK::Domain::TokenCardData.new_from_hash(hash['data'])
        end
      end
    end
  end
end
