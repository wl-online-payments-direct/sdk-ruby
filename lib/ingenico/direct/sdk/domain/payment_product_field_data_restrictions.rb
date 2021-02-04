#
# This class was auto-generated from the API references found at
# https://support.direct.ingenico.com/documentation/api/reference/
#
require 'ingenico/direct/sdk/data_object'
require 'ingenico/direct/sdk/domain/payment_product_field_validators'

module Ingenico::Direct::SDK
  module Domain

    # @attr [true/false] is_required
    # @attr [Ingenico::Direct::SDK::Domain::PaymentProductFieldValidators] validators
    class PaymentProductFieldDataRestrictions < Ingenico::Direct::SDK::DataObject
      attr_accessor :is_required
      attr_accessor :validators

      # @return (Hash)
      def to_h
        hash = super
        hash['isRequired'] = @is_required unless @is_required.nil?
        hash['validators'] = @validators.to_h if @validators
        hash
      end

      def from_hash(hash)
        super
        @is_required = hash['isRequired'] if hash.key? 'isRequired'
        if hash.key? 'validators'
          raise TypeError, "value '%s' is not a Hash" % [hash['validators']] unless hash['validators'].is_a? Hash
          @validators = Ingenico::Direct::SDK::Domain::PaymentProductFieldValidators.new_from_hash(hash['validators'])
        end
      end
    end
  end
end
