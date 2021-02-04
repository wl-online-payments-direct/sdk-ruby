#
# This class was auto-generated from the API references found at
# https://support.direct.ingenico.com/documentation/api/reference/
#
require 'ingenico/direct/sdk/data_object'

module Ingenico::Direct::SDK
  module Domain

    # @attr [true/false] address_selection_at_pay_pal
    class RedirectPaymentProduct840SpecificInput < Ingenico::Direct::SDK::DataObject
      attr_accessor :address_selection_at_pay_pal

      # @return (Hash)
      def to_h
        hash = super
        hash['addressSelectionAtPayPal'] = @address_selection_at_pay_pal unless @address_selection_at_pay_pal.nil?
        hash
      end

      def from_hash(hash)
        super
        @address_selection_at_pay_pal = hash['addressSelectionAtPayPal'] if hash.key? 'addressSelectionAtPayPal'
      end
    end
  end
end
