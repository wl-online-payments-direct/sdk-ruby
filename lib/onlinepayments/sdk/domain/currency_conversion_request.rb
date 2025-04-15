#
# This file was automatically generated.
#
require 'onlinepayments/sdk/domain/data_object'
require 'onlinepayments/sdk/domain/dcc_card_source'
require 'onlinepayments/sdk/domain/transaction'

module OnlinePayments
  module SDK
    module Domain
      # @attr [OnlinePayments::SDK::Domain::DccCardSource] card_source
      # @attr [OnlinePayments::SDK::Domain::Transaction] transaction
      class CurrencyConversionRequest < OnlinePayments::SDK::Domain::DataObject

        attr_accessor :card_source

        attr_accessor :transaction

        # @return (Hash)
        def to_h
          hash = super
          hash['cardSource'] = @card_source.to_h unless @card_source.nil?
          hash['transaction'] = @transaction.to_h unless @transaction.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'cardSource'
            raise TypeError, "value '%s' is not a Hash" % [hash['cardSource']] unless hash['cardSource'].is_a? Hash
            @card_source = OnlinePayments::SDK::Domain::DccCardSource.new_from_hash(hash['cardSource'])
          end
          if hash.has_key? 'transaction'
            raise TypeError, "value '%s' is not a Hash" % [hash['transaction']] unless hash['transaction'].is_a? Hash
            @transaction = OnlinePayments::SDK::Domain::Transaction.new_from_hash(hash['transaction'])
          end
        end
      end
    end
  end
end
