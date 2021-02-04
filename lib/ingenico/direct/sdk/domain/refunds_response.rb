#
# This class was auto-generated from the API references found at
# https://support.direct.ingenico.com/documentation/api/reference/
#
require 'ingenico/direct/sdk/data_object'
require 'ingenico/direct/sdk/domain/refund_response'

module Ingenico::Direct::SDK
  module Domain

    # @attr [Array<Ingenico::Direct::SDK::Domain::RefundResponse>] refunds
    class RefundsResponse < Ingenico::Direct::SDK::DataObject
      attr_accessor :refunds

      # @return (Hash)
      def to_h
        hash = super
        hash['refunds'] = @refunds.collect(&:to_h) if @refunds
        hash
      end

      def from_hash(hash)
        super
        if hash.key? 'refunds'
          raise TypeError, "value '%s' is not an Array" % [hash['refunds']] unless hash['refunds'].is_a? Array
          @refunds = []
          hash['refunds'].each do |e|
            @refunds << Ingenico::Direct::SDK::Domain::RefundResponse.new_from_hash(e)
          end
        end
      end
    end
  end
end
