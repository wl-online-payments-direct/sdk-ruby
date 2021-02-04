#
# This class was auto-generated from the API references found at
# https://support.direct.ingenico.com/documentation/api/reference/
#
require 'ingenico/direct/sdk/data_object'

module Ingenico::Direct::SDK
  module Domain

    # @attr [String] first_name
    # @attr [String] surname
    # @attr [String] title
    class PersonalName < Ingenico::Direct::SDK::DataObject
      attr_accessor :first_name
      attr_accessor :surname
      attr_accessor :title

      # @return (Hash)
      def to_h
        hash = super
        hash['firstName'] = @first_name unless @first_name.nil?
        hash['surname'] = @surname unless @surname.nil?
        hash['title'] = @title unless @title.nil?
        hash
      end

      def from_hash(hash)
        super
        @first_name = hash['firstName'] if hash.key? 'firstName'
        @surname = hash['surname'] if hash.key? 'surname'
        @title = hash['title'] if hash.key? 'title'
      end
    end
  end
end
