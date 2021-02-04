#
# This class was auto-generated from the API references found at
# https://support.direct.ingenico.com/documentation/api/reference/
#
require 'ingenico/direct/sdk/data_object'
require 'ingenico/direct/sdk/domain/card'

module Ingenico::Direct::SDK
  module Domain

    # @attr [Ingenico::Direct::SDK::Domain::Card] card
    class TokenData < Ingenico::Direct::SDK::DataObject
      attr_accessor :card

      # @return (Hash)
      def to_h
        hash = super
        hash['card'] = @card.to_h if @card
        hash
      end

      def from_hash(hash)
        super
        if hash.key? 'card'
          raise TypeError, "value '%s' is not a Hash" % [hash['card']] unless hash['card'].is_a? Hash
          @card = Ingenico::Direct::SDK::Domain::Card.new_from_hash(hash['card'])
        end
      end
    end
  end
end
