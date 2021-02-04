#
# This class was auto-generated from the API references found at
# https://support.direct.ingenico.com/documentation/api/reference/
#
require 'ingenico/direct/sdk/data_object'
require 'ingenico/direct/sdk/domain/personal_name'

module Ingenico::Direct::SDK
  module Domain

    # @attr [String] additional_info
    # @attr [String] city
    # @attr [String] country_code
    # @attr [String] house_number
    # @attr [Ingenico::Direct::SDK::Domain::PersonalName] name
    # @attr [String] state
    # @attr [String] street
    # @attr [String] zip
    class AddressPersonal < Ingenico::Direct::SDK::DataObject
      attr_accessor :additional_info
      attr_accessor :city
      attr_accessor :country_code
      attr_accessor :house_number
      attr_accessor :name
      attr_accessor :state
      attr_accessor :street
      attr_accessor :zip

      # @return (Hash)
      def to_h
        hash = super
        hash['additionalInfo'] = @additional_info unless @additional_info.nil?
        hash['city'] = @city unless @city.nil?
        hash['countryCode'] = @country_code unless @country_code.nil?
        hash['houseNumber'] = @house_number unless @house_number.nil?
        hash['name'] = @name.to_h if @name
        hash['state'] = @state unless @state.nil?
        hash['street'] = @street unless @street.nil?
        hash['zip'] = @zip unless @zip.nil?
        hash
      end

      def from_hash(hash)
        super
        @additional_info = hash['additionalInfo'] if hash.key? 'additionalInfo'
        @city = hash['city'] if hash.key? 'city'
        @country_code = hash['countryCode'] if hash.key? 'countryCode'
        @house_number = hash['houseNumber'] if hash.key? 'houseNumber'
        if hash.key? 'name'
          raise TypeError, "value '%s' is not a Hash" % [hash['name']] unless hash['name'].is_a? Hash
          @name = Ingenico::Direct::SDK::Domain::PersonalName.new_from_hash(hash['name'])
        end
        @state = hash['state'] if hash.key? 'state'
        @street = hash['street'] if hash.key? 'street'
        @zip = hash['zip'] if hash.key? 'zip'
      end
    end
  end
end
