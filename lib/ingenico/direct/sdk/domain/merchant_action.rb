#
# This class was auto-generated from the API references found at
# https://support.direct.ingenico.com/documentation/api/reference/
#
require 'ingenico/direct/sdk/data_object'
require 'ingenico/direct/sdk/domain/redirect_data'

module Ingenico::Direct::SDK
  module Domain

    # @attr [String] action_type
    # @attr [Ingenico::Direct::SDK::Domain::RedirectData] redirect_data
    class MerchantAction < Ingenico::Direct::SDK::DataObject
      attr_accessor :action_type
      attr_accessor :redirect_data

      # @return (Hash)
      def to_h
        hash = super
        hash['actionType'] = @action_type unless @action_type.nil?
        hash['redirectData'] = @redirect_data.to_h if @redirect_data
        hash
      end

      def from_hash(hash)
        super
        @action_type = hash['actionType'] if hash.key? 'actionType'
        if hash.key? 'redirectData'
          raise TypeError, "value '%s' is not a Hash" % [hash['redirectData']] unless hash['redirectData'].is_a? Hash
          @redirect_data = Ingenico::Direct::SDK::Domain::RedirectData.new_from_hash(hash['redirectData'])
        end
      end
    end
  end
end
