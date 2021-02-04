#
# This class was auto-generated from the API references found at
# https://support.direct.ingenico.com/documentation/api/reference/
#
require 'ingenico/direct/sdk/data_object'

module Ingenico::Direct::SDK
  module Domain

    # @attr [String] eci
    # @attr [String] xid
    class ThreeDSecureResults < Ingenico::Direct::SDK::DataObject
      attr_accessor :eci
      attr_accessor :xid

      # @return (Hash)
      def to_h
        hash = super
        hash['eci'] = @eci unless @eci.nil?
        hash['xid'] = @xid unless @xid.nil?
        hash
      end

      def from_hash(hash)
        super
        @eci = hash['eci'] if hash.key? 'eci'
        @xid = hash['xid'] if hash.key? 'xid'
      end
    end
  end
end
