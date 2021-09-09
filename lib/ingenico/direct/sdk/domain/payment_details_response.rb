#
# This class was auto-generated from the API references found at
# https://support.direct.ingenico.com/documentation/api/reference/
#
require 'ingenico/direct/sdk/data_object'
require 'ingenico/direct/sdk/domain/hosted_checkout_specific_output'
require 'ingenico/direct/sdk/domain/operation_output'
require 'ingenico/direct/sdk/domain/payment_output'
require 'ingenico/direct/sdk/domain/payment_status_output'

module Ingenico::Direct::SDK
  module Domain

    # @attr [Array<Ingenico::Direct::SDK::Domain::OperationOutput>] operations
    # @attr [Ingenico::Direct::SDK::Domain::HostedCheckoutSpecificOutput] hosted_checkout_specific_output
    # @attr [String] id
    # @attr [Ingenico::Direct::SDK::Domain::PaymentOutput] payment_output
    # @attr [String] status
    # @attr [Ingenico::Direct::SDK::Domain::PaymentStatusOutput] status_output
    class PaymentDetailsResponse < Ingenico::Direct::SDK::DataObject
      attr_accessor :operations
      attr_accessor :hosted_checkout_specific_output
      attr_accessor :id
      attr_accessor :payment_output
      attr_accessor :status
      attr_accessor :status_output

      # @return (Hash)
      def to_h
        hash = super
        hash['Operations'] = @operations.collect(&:to_h) if @operations
        hash['hostedCheckoutSpecificOutput'] = @hosted_checkout_specific_output.to_h if @hosted_checkout_specific_output
        hash['id'] = @id unless @id.nil?
        hash['paymentOutput'] = @payment_output.to_h if @payment_output
        hash['status'] = @status unless @status.nil?
        hash['statusOutput'] = @status_output.to_h if @status_output
        hash
      end

      def from_hash(hash)
        super
        if hash.key? 'Operations'
          raise TypeError, "value '%s' is not an Array" % [hash['Operations']] unless hash['Operations'].is_a? Array
          @operations = []
          hash['Operations'].each do |e|
            @operations << Ingenico::Direct::SDK::Domain::OperationOutput.new_from_hash(e)
          end
        end
        if hash.key? 'hostedCheckoutSpecificOutput'
          raise TypeError, "value '%s' is not a Hash" % [hash['hostedCheckoutSpecificOutput']] unless hash['hostedCheckoutSpecificOutput'].is_a? Hash
          @hosted_checkout_specific_output = Ingenico::Direct::SDK::Domain::HostedCheckoutSpecificOutput.new_from_hash(hash['hostedCheckoutSpecificOutput'])
        end
        @id = hash['id'] if hash.key? 'id'
        if hash.key? 'paymentOutput'
          raise TypeError, "value '%s' is not a Hash" % [hash['paymentOutput']] unless hash['paymentOutput'].is_a? Hash
          @payment_output = Ingenico::Direct::SDK::Domain::PaymentOutput.new_from_hash(hash['paymentOutput'])
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
