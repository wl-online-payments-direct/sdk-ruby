#
# This class was auto-generated from the API references found at
# https://support.direct.ingenico.com/documentation/api/reference/
#
require 'ingenico/direct/sdk/data_object'
require 'ingenico/direct/sdk/domain/directory_entry'

module Ingenico::Direct::SDK
  module Domain

    # @attr [Array<Ingenico::Direct::SDK::Domain::DirectoryEntry>] entries
    class ProductDirectory < Ingenico::Direct::SDK::DataObject
      attr_accessor :entries

      # @return (Hash)
      def to_h
        hash = super
        hash['entries'] = @entries.collect(&:to_h) if @entries
        hash
      end

      def from_hash(hash)
        super
        if hash.key? 'entries'
          raise TypeError, "value '%s' is not an Array" % [hash['entries']] unless hash['entries'].is_a? Array
          @entries = []
          hash['entries'].each do |e|
            @entries << Ingenico::Direct::SDK::Domain::DirectoryEntry.new_from_hash(e)
          end
        end
      end
    end
  end
end
