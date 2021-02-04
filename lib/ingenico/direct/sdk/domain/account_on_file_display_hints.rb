#
# This class was auto-generated from the API references found at
# https://support.direct.ingenico.com/documentation/api/reference/
#
require 'ingenico/direct/sdk/data_object'
require 'ingenico/direct/sdk/domain/label_template_element'

module Ingenico::Direct::SDK
  module Domain

    # @attr [Array<Ingenico::Direct::SDK::Domain::LabelTemplateElement>] label_template
    # @attr [String] logo
    class AccountOnFileDisplayHints < Ingenico::Direct::SDK::DataObject
      attr_accessor :label_template
      attr_accessor :logo

      # @return (Hash)
      def to_h
        hash = super
        hash['labelTemplate'] = @label_template.collect(&:to_h) if @label_template
        hash['logo'] = @logo unless @logo.nil?
        hash
      end

      def from_hash(hash)
        super
        if hash.key? 'labelTemplate'
          raise TypeError, "value '%s' is not an Array" % [hash['labelTemplate']] unless hash['labelTemplate'].is_a? Array
          @label_template = []
          hash['labelTemplate'].each do |e|
            @label_template << Ingenico::Direct::SDK::Domain::LabelTemplateElement.new_from_hash(e)
          end
        end
        @logo = hash['logo'] if hash.key? 'logo'
      end
    end
  end
end
