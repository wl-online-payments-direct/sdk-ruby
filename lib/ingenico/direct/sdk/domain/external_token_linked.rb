#
# This class was auto-generated from the API references found at
# https://support.direct.ingenico.com/documentation/api/reference/
#
require 'ingenico/direct/sdk/data_object'

module Ingenico::Direct::SDK
  module Domain

    # @attr [String] gts_computed_token
    class ExternalTokenLinked < Ingenico::Direct::SDK::DataObject
      attr_accessor :gts_computed_token

      # @return (Hash)
      def to_h
        hash = super
        hash['GTSComputedToken'] = @gts_computed_token unless @gts_computed_token.nil?
        hash
      end

      def from_hash(hash)
        super
        @gts_computed_token = hash['GTSComputedToken'] if hash.key? 'GTSComputedToken'
      end
    end
  end
end
