#
# This class was auto-generated from the API references found at
# https://support.direct.ingenico.com/documentation/api/reference/
#
require 'ingenico/direct/sdk/data_object'

module Ingenico::Direct::SDK
  module Domain

    # @attr [String] recurring_payment_sequence_indicator
    class CardRecurrenceDetails < Ingenico::Direct::SDK::DataObject
      attr_accessor :recurring_payment_sequence_indicator

      # @return (Hash)
      def to_h
        hash = super
        hash['recurringPaymentSequenceIndicator'] = @recurring_payment_sequence_indicator unless @recurring_payment_sequence_indicator.nil?
        hash
      end

      def from_hash(hash)
        super
        @recurring_payment_sequence_indicator = hash['recurringPaymentSequenceIndicator'] if hash.key? 'recurringPaymentSequenceIndicator'
      end
    end
  end
end
