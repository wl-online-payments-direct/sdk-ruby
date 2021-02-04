#
# This class was auto-generated from the API references found at
# https://support.direct.ingenico.com/documentation/api/reference/
#
require 'ingenico/direct/sdk/data_object'
require 'ingenico/direct/sdk/domain/customer_token'

module Ingenico::Direct::SDK
  module Domain

    # @attr [String] alias
    # @attr [Ingenico::Direct::SDK::Domain::CustomerToken] customer
    class TokenEWallet < Ingenico::Direct::SDK::DataObject
      attr_accessor :alias
      attr_accessor :customer

      # @return (Hash)
      def to_h
        hash = super
        hash['alias'] = @alias unless @alias.nil?
        hash['customer'] = @customer.to_h if @customer
        hash
      end

      def from_hash(hash)
        super
        @alias = hash['alias'] if hash.key? 'alias'
        if hash.key? 'customer'
          raise TypeError, "value '%s' is not a Hash" % [hash['customer']] unless hash['customer'].is_a? Hash
          @customer = Ingenico::Direct::SDK::Domain::CustomerToken.new_from_hash(hash['customer'])
        end
      end
    end
  end
end
