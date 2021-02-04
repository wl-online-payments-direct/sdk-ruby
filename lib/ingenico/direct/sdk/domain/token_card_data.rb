#
# This class was auto-generated from the API references found at
# https://support.direct.ingenico.com/documentation/api/reference/
#
require 'ingenico/direct/sdk/data_object'
require 'ingenico/direct/sdk/domain/card_without_cvv'

module Ingenico::Direct::SDK
  module Domain

    # @attr [Ingenico::Direct::SDK::Domain::CardWithoutCvv] card_without_cvv
    class TokenCardData < Ingenico::Direct::SDK::DataObject
      attr_accessor :card_without_cvv

      # @return (Hash)
      def to_h
        hash = super
        hash['cardWithoutCvv'] = @card_without_cvv.to_h if @card_without_cvv
        hash
      end

      def from_hash(hash)
        super
        if hash.key? 'cardWithoutCvv'
          raise TypeError, "value '%s' is not a Hash" % [hash['cardWithoutCvv']] unless hash['cardWithoutCvv'].is_a? Hash
          @card_without_cvv = Ingenico::Direct::SDK::Domain::CardWithoutCvv.new_from_hash(hash['cardWithoutCvv'])
        end
      end
    end
  end
end
