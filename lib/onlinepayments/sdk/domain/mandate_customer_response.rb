#
# This file was automatically generated.
#
require 'onlinepayments/sdk/domain/bank_account_iban'
require 'onlinepayments/sdk/domain/data_object'
require 'onlinepayments/sdk/domain/mandate_address_response'
require 'onlinepayments/sdk/domain/mandate_contact_details'
require 'onlinepayments/sdk/domain/mandate_personal_information_response'

module OnlinePayments
  module SDK
    module Domain
      # @attr [OnlinePayments::SDK::Domain::BankAccountIban] bank_account_iban
      # @attr [String] company_name
      # @attr [OnlinePayments::SDK::Domain::MandateContactDetails] contact_details
      # @attr [OnlinePayments::SDK::Domain::MandateAddressResponse] mandate_address
      # @attr [OnlinePayments::SDK::Domain::MandatePersonalInformationResponse] personal_information
      class MandateCustomerResponse < OnlinePayments::SDK::Domain::DataObject

        attr_accessor :bank_account_iban

        attr_accessor :company_name

        attr_accessor :contact_details

        attr_accessor :mandate_address

        attr_accessor :personal_information

        # @return (Hash)
        def to_h
          hash = super
          hash['bankAccountIban'] = @bank_account_iban.to_h unless @bank_account_iban.nil?
          hash['companyName'] = @company_name unless @company_name.nil?
          hash['contactDetails'] = @contact_details.to_h unless @contact_details.nil?
          hash['mandateAddress'] = @mandate_address.to_h unless @mandate_address.nil?
          hash['personalInformation'] = @personal_information.to_h unless @personal_information.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'bankAccountIban'
            raise TypeError, "value '%s' is not a Hash" % [hash['bankAccountIban']] unless hash['bankAccountIban'].is_a? Hash
            @bank_account_iban = OnlinePayments::SDK::Domain::BankAccountIban.new_from_hash(hash['bankAccountIban'])
          end
          if hash.has_key? 'companyName'
            @company_name = hash['companyName']
          end
          if hash.has_key? 'contactDetails'
            raise TypeError, "value '%s' is not a Hash" % [hash['contactDetails']] unless hash['contactDetails'].is_a? Hash
            @contact_details = OnlinePayments::SDK::Domain::MandateContactDetails.new_from_hash(hash['contactDetails'])
          end
          if hash.has_key? 'mandateAddress'
            raise TypeError, "value '%s' is not a Hash" % [hash['mandateAddress']] unless hash['mandateAddress'].is_a? Hash
            @mandate_address = OnlinePayments::SDK::Domain::MandateAddressResponse.new_from_hash(hash['mandateAddress'])
          end
          if hash.has_key? 'personalInformation'
            raise TypeError, "value '%s' is not a Hash" % [hash['personalInformation']] unless hash['personalInformation'].is_a? Hash
            @personal_information = OnlinePayments::SDK::Domain::MandatePersonalInformationResponse.new_from_hash(hash['personalInformation'])
          end
        end
      end
    end
  end
end
