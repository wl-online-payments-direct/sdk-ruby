#
# This class was auto-generated from the API references found at
# https://support.direct.ingenico.com/documentation/api/reference/
#
require 'ingenico/direct/sdk/data_object'

module Ingenico::Direct::SDK
  module Domain

    # @attr [true/false] group_cards
    class CardPaymentMethodSpecificInputForHostedCheckout < Ingenico::Direct::SDK::DataObject
      attr_accessor :group_cards

      # @return (Hash)
      def to_h
        hash = super
        hash['groupCards'] = @group_cards unless @group_cards.nil?
        hash
      end

      def from_hash(hash)
        super
        @group_cards = hash['groupCards'] if hash.key? 'groupCards'
      end
    end
  end
end
