#
# This class was auto-generated from the API references found at
# https://support.direct.ingenico.com/documentation/api/reference/
#
require 'ingenico/direct/sdk/data_object'

module Ingenico::Direct::SDK
  module Domain

    # @attr [String] avs_result
    # @attr [String] cvv_result
    # @attr [String] fraud_service_result
    class CardFraudResults < Ingenico::Direct::SDK::DataObject
      attr_accessor :avs_result
      attr_accessor :cvv_result
      attr_accessor :fraud_service_result

      # @return (Hash)
      def to_h
        hash = super
        hash['avsResult'] = @avs_result unless @avs_result.nil?
        hash['cvvResult'] = @cvv_result unless @cvv_result.nil?
        hash['fraudServiceResult'] = @fraud_service_result unless @fraud_service_result.nil?
        hash
      end

      def from_hash(hash)
        super
        @avs_result = hash['avsResult'] if hash.key? 'avsResult'
        @cvv_result = hash['cvvResult'] if hash.key? 'cvvResult'
        @fraud_service_result = hash['fraudServiceResult'] if hash.key? 'fraudServiceResult'
      end
    end
  end
end
