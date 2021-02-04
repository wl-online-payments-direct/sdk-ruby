#
# This class was auto-generated from the API references found at
# https://support.direct.ingenico.com/documentation/api/reference/
#
require 'ingenico/direct/sdk/data_object'

module Ingenico::Direct::SDK
  module Domain

    # @attr [String] result
    class TestConnection < Ingenico::Direct::SDK::DataObject
      attr_accessor :result

      # @return (Hash)
      def to_h
        hash = super
        hash['result'] = @result unless @result.nil?
        hash
      end

      def from_hash(hash)
        super
        @result = hash['result'] if hash.key? 'result'
      end
    end
  end
end
