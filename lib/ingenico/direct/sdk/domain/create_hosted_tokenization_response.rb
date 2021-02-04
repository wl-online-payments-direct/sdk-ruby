#
# This class was auto-generated from the API references found at
# https://support.direct.ingenico.com/documentation/api/reference/
#
require 'ingenico/direct/sdk/data_object'

module Ingenico::Direct::SDK
  module Domain

    # @attr [String] hosted_tokenization_id
    # @attr [Array<String>] invalid_tokens
    # @attr [String] partial_redirect_url
    class CreateHostedTokenizationResponse < Ingenico::Direct::SDK::DataObject
      attr_accessor :hosted_tokenization_id
      attr_accessor :invalid_tokens
      attr_accessor :partial_redirect_url

      # @return (Hash)
      def to_h
        hash = super
        hash['hostedTokenizationId'] = @hosted_tokenization_id unless @hosted_tokenization_id.nil?
        hash['invalidTokens'] = @invalid_tokens unless @invalid_tokens.nil?
        hash['partialRedirectUrl'] = @partial_redirect_url unless @partial_redirect_url.nil?
        hash
      end

      def from_hash(hash)
        super
        @hosted_tokenization_id = hash['hostedTokenizationId'] if hash.key? 'hostedTokenizationId'
        if hash.key? 'invalidTokens'
          raise TypeError, "value '%s' is not an Array" % [hash['invalidTokens']] unless hash['invalidTokens'].is_a? Array
          @invalid_tokens = []
          hash['invalidTokens'].each do |e|
            @invalid_tokens << e
          end
        end
        @partial_redirect_url = hash['partialRedirectUrl'] if hash.key? 'partialRedirectUrl'
      end
    end
  end
end
