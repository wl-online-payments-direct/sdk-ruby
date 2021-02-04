#
# This class was auto-generated from the API references found at
# https://support.direct.ingenico.com/documentation/api/reference/
#
require 'ingenico/direct/sdk/data_object'
require 'ingenico/direct/sdk/domain/three_d_secure_data'

module Ingenico::Direct::SDK
  module Domain

    # @attr [String] challenge_canvas_size
    # @attr [String] challenge_indicator
    # @attr [String] exemption_request
    # @attr [Ingenico::Direct::SDK::Domain::ThreeDSecureData] prior_three_d_secure_data
    # @attr [true/false] skip_authentication
    class ThreeDSecureBase < Ingenico::Direct::SDK::DataObject
      attr_accessor :challenge_canvas_size
      attr_accessor :challenge_indicator
      attr_accessor :exemption_request
      attr_accessor :prior_three_d_secure_data
      attr_accessor :skip_authentication

      # @return (Hash)
      def to_h
        hash = super
        hash['challengeCanvasSize'] = @challenge_canvas_size unless @challenge_canvas_size.nil?
        hash['challengeIndicator'] = @challenge_indicator unless @challenge_indicator.nil?
        hash['exemptionRequest'] = @exemption_request unless @exemption_request.nil?
        hash['priorThreeDSecureData'] = @prior_three_d_secure_data.to_h if @prior_three_d_secure_data
        hash['skipAuthentication'] = @skip_authentication unless @skip_authentication.nil?
        hash
      end

      def from_hash(hash)
        super
        @challenge_canvas_size = hash['challengeCanvasSize'] if hash.key? 'challengeCanvasSize'
        @challenge_indicator = hash['challengeIndicator'] if hash.key? 'challengeIndicator'
        @exemption_request = hash['exemptionRequest'] if hash.key? 'exemptionRequest'
        if hash.key? 'priorThreeDSecureData'
          raise TypeError, "value '%s' is not a Hash" % [hash['priorThreeDSecureData']] unless hash['priorThreeDSecureData'].is_a? Hash
          @prior_three_d_secure_data = Ingenico::Direct::SDK::Domain::ThreeDSecureData.new_from_hash(hash['priorThreeDSecureData'])
        end
        @skip_authentication = hash['skipAuthentication'] if hash.key? 'skipAuthentication'
      end
    end
  end
end
