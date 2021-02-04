#
# This class was auto-generated from the API references found at
# https://support.direct.ingenico.com/documentation/api/reference/
#
require 'ingenico/direct/sdk/data_object'
require 'ingenico/direct/sdk/domain/card_essentials'
require 'ingenico/direct/sdk/domain/card_fraud_results'
require 'ingenico/direct/sdk/domain/three_d_secure_results'

module Ingenico::Direct::SDK
  module Domain

    # @attr [String] authorisation_code
    # @attr [Ingenico::Direct::SDK::Domain::CardEssentials] card
    # @attr [Ingenico::Direct::SDK::Domain::CardFraudResults] fraud_results
    # @attr [String] initial_scheme_transaction_id
    # @attr [String] payment_option
    # @attr [Integer] payment_product_id
    # @attr [Ingenico::Direct::SDK::Domain::ThreeDSecureResults] three_d_secure_results
    # @attr [String] token
    class CardPaymentMethodSpecificOutput < Ingenico::Direct::SDK::DataObject
      attr_accessor :authorisation_code
      attr_accessor :card
      attr_accessor :fraud_results
      attr_accessor :initial_scheme_transaction_id
      attr_accessor :payment_option
      attr_accessor :payment_product_id
      attr_accessor :three_d_secure_results
      attr_accessor :token

      # @return (Hash)
      def to_h
        hash = super
        hash['authorisationCode'] = @authorisation_code unless @authorisation_code.nil?
        hash['card'] = @card.to_h if @card
        hash['fraudResults'] = @fraud_results.to_h if @fraud_results
        hash['initialSchemeTransactionId'] = @initial_scheme_transaction_id unless @initial_scheme_transaction_id.nil?
        hash['paymentOption'] = @payment_option unless @payment_option.nil?
        hash['paymentProductId'] = @payment_product_id unless @payment_product_id.nil?
        hash['threeDSecureResults'] = @three_d_secure_results.to_h if @three_d_secure_results
        hash['token'] = @token unless @token.nil?
        hash
      end

      def from_hash(hash)
        super
        @authorisation_code = hash['authorisationCode'] if hash.key? 'authorisationCode'
        if hash.key? 'card'
          raise TypeError, "value '%s' is not a Hash" % [hash['card']] unless hash['card'].is_a? Hash
          @card = Ingenico::Direct::SDK::Domain::CardEssentials.new_from_hash(hash['card'])
        end
        if hash.key? 'fraudResults'
          raise TypeError, "value '%s' is not a Hash" % [hash['fraudResults']] unless hash['fraudResults'].is_a? Hash
          @fraud_results = Ingenico::Direct::SDK::Domain::CardFraudResults.new_from_hash(hash['fraudResults'])
        end
        @initial_scheme_transaction_id = hash['initialSchemeTransactionId'] if hash.key? 'initialSchemeTransactionId'
        @payment_option = hash['paymentOption'] if hash.key? 'paymentOption'
        @payment_product_id = hash['paymentProductId'] if hash.key? 'paymentProductId'
        if hash.key? 'threeDSecureResults'
          raise TypeError, "value '%s' is not a Hash" % [hash['threeDSecureResults']] unless hash['threeDSecureResults'].is_a? Hash
          @three_d_secure_results = Ingenico::Direct::SDK::Domain::ThreeDSecureResults.new_from_hash(hash['threeDSecureResults'])
        end
        @token = hash['token'] if hash.key? 'token'
      end
    end
  end
end
