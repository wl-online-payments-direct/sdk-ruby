#
# This class was auto-generated from the API references found at
# https://support.direct.ingenico.com/documentation/api/reference/
#
require 'ingenico/direct/sdk/data_object'

module Ingenico::Direct::SDK
  module Domain

    # @attr [String] return_url
    class RedirectionData < Ingenico::Direct::SDK::DataObject
      attr_accessor :return_url

      # @return (Hash)
      def to_h
        hash = super
        hash['returnUrl'] = @return_url unless @return_url.nil?
        hash
      end

      def from_hash(hash)
        super
        @return_url = hash['returnUrl'] if hash.key? 'returnUrl'
      end
    end
  end
end
