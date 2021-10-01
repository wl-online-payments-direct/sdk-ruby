#
# This class was auto-generated from the API references found at
# https://support.direct.ingenico.com/documentation/api/reference/
#
require 'ingenico/direct/sdk/data_object'

module Ingenico::Direct::SDK
  module Domain

    # @attr [String] computed_token
    # @attr [String] gts_computed_token
    # @attr [String] generated_token
    class ExternalTokenLinked < Ingenico::Direct::SDK::DataObject
      attr_accessor :computed_token
      attr_accessor :gts_computed_token
      attr_accessor :generated_token

      # @return (Hash)
      def to_h
        hash = super
        hash['ComputedToken'] = @computed_token unless @computed_token.nil?
        hash['GTSComputedToken'] = @gts_computed_token unless @gts_computed_token.nil?
        hash['GeneratedToken'] = @generated_token unless @generated_token.nil?
        hash
      end

      def from_hash(hash)
        super
        @computed_token = hash['ComputedToken'] if hash.key? 'ComputedToken'
        @gts_computed_token = hash['GTSComputedToken'] if hash.key? 'GTSComputedToken'
        @generated_token = hash['GeneratedToken'] if hash.key? 'GeneratedToken'
      end
    end
  end
end
