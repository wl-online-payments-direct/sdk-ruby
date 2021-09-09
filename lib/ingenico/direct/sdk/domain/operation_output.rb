#
# This class was auto-generated from the API references found at
# https://support.direct.ingenico.com/documentation/api/reference/
#
require 'ingenico/direct/sdk/data_object'
require 'ingenico/direct/sdk/domain/amount_of_money'
require 'ingenico/direct/sdk/domain/payment_references'
require 'ingenico/direct/sdk/domain/payment_status_output'

module Ingenico::Direct::SDK
  module Domain

    # @attr [Ingenico::Direct::SDK::Domain::AmountOfMoney] amount_of_money
    # @attr [String] id
    # @attr [String] payment_method
    # @attr [Ingenico::Direct::SDK::Domain::PaymentReferences] references
    # @attr [String] status
    # @attr [Ingenico::Direct::SDK::Domain::PaymentStatusOutput] status_output
    class OperationOutput < Ingenico::Direct::SDK::DataObject
      attr_accessor :amount_of_money
      attr_accessor :id
      attr_accessor :payment_method
      attr_accessor :references
      attr_accessor :status
      attr_accessor :status_output

      # @return (Hash)
      def to_h
        hash = super
        hash['amountOfMoney'] = @amount_of_money.to_h if @amount_of_money
        hash['id'] = @id unless @id.nil?
        hash['paymentMethod'] = @payment_method unless @payment_method.nil?
        hash['references'] = @references.to_h if @references
        hash['status'] = @status unless @status.nil?
        hash['statusOutput'] = @status_output.to_h if @status_output
        hash
      end

      def from_hash(hash)
        super
        if hash.key? 'amountOfMoney'
          raise TypeError, "value '%s' is not a Hash" % [hash['amountOfMoney']] unless hash['amountOfMoney'].is_a? Hash
          @amount_of_money = Ingenico::Direct::SDK::Domain::AmountOfMoney.new_from_hash(hash['amountOfMoney'])
        end
        @id = hash['id'] if hash.key? 'id'
        @payment_method = hash['paymentMethod'] if hash.key? 'paymentMethod'
        if hash.key? 'references'
          raise TypeError, "value '%s' is not a Hash" % [hash['references']] unless hash['references'].is_a? Hash
          @references = Ingenico::Direct::SDK::Domain::PaymentReferences.new_from_hash(hash['references'])
        end
        @status = hash['status'] if hash.key? 'status'
        if hash.key? 'statusOutput'
          raise TypeError, "value '%s' is not a Hash" % [hash['statusOutput']] unless hash['statusOutput'].is_a? Hash
          @status_output = Ingenico::Direct::SDK::Domain::PaymentStatusOutput.new_from_hash(hash['statusOutput'])
        end
      end
    end
  end
end
