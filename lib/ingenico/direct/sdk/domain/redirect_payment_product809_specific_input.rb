#
# This class was auto-generated from the API references found at
# https://support.direct.ingenico.com/documentation/api/reference/
#
require 'ingenico/direct/sdk/data_object'

module Ingenico::Direct::SDK
  module Domain

    # @attr [String] issuer_id
    class RedirectPaymentProduct809SpecificInput < Ingenico::Direct::SDK::DataObject
      attr_accessor :issuer_id

      # @return (Hash)
      def to_h
        hash = super
        hash['issuerId'] = @issuer_id unless @issuer_id.nil?
        hash
      end

      def from_hash(hash)
        super
        @issuer_id = hash['issuerId'] if hash.key? 'issuerId'
      end
    end
  end
end
