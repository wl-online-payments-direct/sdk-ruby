#
# This class was auto-generated from the API references found at
# https://support.direct.ingenico.com/documentation/api/reference/
#
require 'ingenico/direct/sdk/data_object'

module Ingenico::Direct::SDK
  module Domain

    # @attr [String] network
    # @attr [Long] total_amount_paid
    # @attr [Long] total_amount_refunded
    class RefundMobileMethodSpecificOutput < Ingenico::Direct::SDK::DataObject
      attr_accessor :network
      attr_accessor :total_amount_paid
      attr_accessor :total_amount_refunded

      # @return (Hash)
      def to_h
        hash = super
        hash['network'] = @network unless @network.nil?
        hash['totalAmountPaid'] = @total_amount_paid unless @total_amount_paid.nil?
        hash['totalAmountRefunded'] = @total_amount_refunded unless @total_amount_refunded.nil?
        hash
      end

      def from_hash(hash)
        super
        @network = hash['network'] if hash.key? 'network'
        @total_amount_paid = hash['totalAmountPaid'] if hash.key? 'totalAmountPaid'
        @total_amount_refunded = hash['totalAmountRefunded'] if hash.key? 'totalAmountRefunded'
      end
    end
  end
end
