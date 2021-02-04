#
# This class was auto-generated from the API references found at
# https://support.direct.ingenico.com/documentation/api/reference/
#
require 'ingenico/direct/sdk/data_object'

module Ingenico::Direct::SDK
  module Domain

    # @attr [String] black_list_data
    # @attr [String] customer_ip_address
    class FraudFields < Ingenico::Direct::SDK::DataObject
      attr_accessor :black_list_data
      attr_accessor :customer_ip_address

      # @return (Hash)
      def to_h
        hash = super
        hash['blackListData'] = @black_list_data unless @black_list_data.nil?
        hash['customerIpAddress'] = @customer_ip_address unless @customer_ip_address.nil?
        hash
      end

      def from_hash(hash)
        super
        @black_list_data = hash['blackListData'] if hash.key? 'blackListData'
        @customer_ip_address = hash['customerIpAddress'] if hash.key? 'customerIpAddress'
      end
    end
  end
end
