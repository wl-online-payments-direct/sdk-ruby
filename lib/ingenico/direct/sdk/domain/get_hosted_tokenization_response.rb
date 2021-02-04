#
# This class was auto-generated from the API references found at
# https://support.direct.ingenico.com/documentation/api/reference/
#
require 'ingenico/direct/sdk/data_object'
require 'ingenico/direct/sdk/domain/token_response'

module Ingenico::Direct::SDK
  module Domain

    # @attr [Ingenico::Direct::SDK::Domain::TokenResponse] token
    # @attr [String] token_status
    class GetHostedTokenizationResponse < Ingenico::Direct::SDK::DataObject
      attr_accessor :token
      attr_accessor :token_status

      # @return (Hash)
      def to_h
        hash = super
        hash['token'] = @token.to_h if @token
        hash['tokenStatus'] = @token_status unless @token_status.nil?
        hash
      end

      def from_hash(hash)
        super
        if hash.key? 'token'
          raise TypeError, "value '%s' is not a Hash" % [hash['token']] unless hash['token'].is_a? Hash
          @token = Ingenico::Direct::SDK::Domain::TokenResponse.new_from_hash(hash['token'])
        end
        @token_status = hash['tokenStatus'] if hash.key? 'tokenStatus'
      end
    end
  end
end
