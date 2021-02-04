#
# This class was auto-generated from the API references found at
# https://support.direct.ingenico.com/documentation/api/reference/
#
require 'ingenico/direct/sdk/data_object'
require 'ingenico/direct/sdk/domain/personal_name_token'

module Ingenico::Direct::SDK
  module Domain

    # @attr [Ingenico::Direct::SDK::Domain::PersonalNameToken] name
    class PersonalInformationToken < Ingenico::Direct::SDK::DataObject
      attr_accessor :name

      # @return (Hash)
      def to_h
        hash = super
        hash['name'] = @name.to_h if @name
        hash
      end

      def from_hash(hash)
        super
        if hash.key? 'name'
          raise TypeError, "value '%s' is not a Hash" % [hash['name']] unless hash['name'].is_a? Hash
          @name = Ingenico::Direct::SDK::Domain::PersonalNameToken.new_from_hash(hash['name'])
        end
      end
    end
  end
end
