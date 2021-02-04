#
# This class was auto-generated from the API references found at
# https://support.direct.ingenico.com/documentation/api/reference/
#
require 'ingenico/direct/sdk/data_object'

module Ingenico::Direct::SDK
  module Domain

    # @attr [String] name
    class CompanyInformation < Ingenico::Direct::SDK::DataObject
      attr_accessor :name

      # @return (Hash)
      def to_h
        hash = super
        hash['name'] = @name unless @name.nil?
        hash
      end

      def from_hash(hash)
        super
        @name = hash['name'] if hash.key? 'name'
      end
    end
  end
end
