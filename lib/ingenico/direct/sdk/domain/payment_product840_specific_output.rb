#
# This class was auto-generated from the API references found at
# https://support.direct.ingenico.com/documentation/api/reference/
#
require 'ingenico/direct/sdk/data_object'
require 'ingenico/direct/sdk/domain/address'
require 'ingenico/direct/sdk/domain/payment_product840_customer_account'
require 'ingenico/direct/sdk/domain/protection_eligibility'

module Ingenico::Direct::SDK
  module Domain

    # @attr [Ingenico::Direct::SDK::Domain::Address] billing_address
    # @attr [Ingenico::Direct::SDK::Domain::PaymentProduct840CustomerAccount] customer_account
    # @attr [Ingenico::Direct::SDK::Domain::Address] customer_address
    # @attr [Ingenico::Direct::SDK::Domain::ProtectionEligibility] protection_eligibility
    class PaymentProduct840SpecificOutput < Ingenico::Direct::SDK::DataObject
      attr_accessor :billing_address
      attr_accessor :customer_account
      attr_accessor :customer_address
      attr_accessor :protection_eligibility

      # @return (Hash)
      def to_h
        hash = super
        hash['billingAddress'] = @billing_address.to_h if @billing_address
        hash['customerAccount'] = @customer_account.to_h if @customer_account
        hash['customerAddress'] = @customer_address.to_h if @customer_address
        hash['protectionEligibility'] = @protection_eligibility.to_h if @protection_eligibility
        hash
      end

      def from_hash(hash)
        super
        if hash.key? 'billingAddress'
          raise TypeError, "value '%s' is not a Hash" % [hash['billingAddress']] unless hash['billingAddress'].is_a? Hash
          @billing_address = Ingenico::Direct::SDK::Domain::Address.new_from_hash(hash['billingAddress'])
        end
        if hash.key? 'customerAccount'
          raise TypeError, "value '%s' is not a Hash" % [hash['customerAccount']] unless hash['customerAccount'].is_a? Hash
          @customer_account = Ingenico::Direct::SDK::Domain::PaymentProduct840CustomerAccount.new_from_hash(hash['customerAccount'])
        end
        if hash.key? 'customerAddress'
          raise TypeError, "value '%s' is not a Hash" % [hash['customerAddress']] unless hash['customerAddress'].is_a? Hash
          @customer_address = Ingenico::Direct::SDK::Domain::Address.new_from_hash(hash['customerAddress'])
        end
        if hash.key? 'protectionEligibility'
          raise TypeError, "value '%s' is not a Hash" % [hash['protectionEligibility']] unless hash['protectionEligibility'].is_a? Hash
          @protection_eligibility = Ingenico::Direct::SDK::Domain::ProtectionEligibility.new_from_hash(hash['protectionEligibility'])
        end
      end
    end
  end
end
