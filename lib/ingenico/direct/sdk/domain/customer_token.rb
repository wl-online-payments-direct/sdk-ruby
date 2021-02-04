#
# This class was auto-generated from the API references found at
# https://support.direct.ingenico.com/documentation/api/reference/
#
require 'ingenico/direct/sdk/data_object'
require 'ingenico/direct/sdk/domain/address'
require 'ingenico/direct/sdk/domain/company_information'
require 'ingenico/direct/sdk/domain/personal_information_token'

module Ingenico::Direct::SDK
  module Domain

    # @attr [Ingenico::Direct::SDK::Domain::Address] billing_address
    # @attr [Ingenico::Direct::SDK::Domain::CompanyInformation] company_information
    # @attr [Ingenico::Direct::SDK::Domain::PersonalInformationToken] personal_information
    class CustomerToken < Ingenico::Direct::SDK::DataObject
      attr_accessor :billing_address
      attr_accessor :company_information
      attr_accessor :personal_information

      # @return (Hash)
      def to_h
        hash = super
        hash['billingAddress'] = @billing_address.to_h if @billing_address
        hash['companyInformation'] = @company_information.to_h if @company_information
        hash['personalInformation'] = @personal_information.to_h if @personal_information
        hash
      end

      def from_hash(hash)
        super
        if hash.key? 'billingAddress'
          raise TypeError, "value '%s' is not a Hash" % [hash['billingAddress']] unless hash['billingAddress'].is_a? Hash
          @billing_address = Ingenico::Direct::SDK::Domain::Address.new_from_hash(hash['billingAddress'])
        end
        if hash.key? 'companyInformation'
          raise TypeError, "value '%s' is not a Hash" % [hash['companyInformation']] unless hash['companyInformation'].is_a? Hash
          @company_information = Ingenico::Direct::SDK::Domain::CompanyInformation.new_from_hash(hash['companyInformation'])
        end
        if hash.key? 'personalInformation'
          raise TypeError, "value '%s' is not a Hash" % [hash['personalInformation']] unless hash['personalInformation'].is_a? Hash
          @personal_information = Ingenico::Direct::SDK::Domain::PersonalInformationToken.new_from_hash(hash['personalInformation'])
        end
      end
    end
  end
end
