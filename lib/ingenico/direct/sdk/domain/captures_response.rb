#
# This class was auto-generated from the API references found at
# https://support.direct.ingenico.com/documentation/api/reference/
#
require 'ingenico/direct/sdk/data_object'
require 'ingenico/direct/sdk/domain/capture'

module Ingenico::Direct::SDK
  module Domain

    # @attr [Array<Ingenico::Direct::SDK::Domain::Capture>] captures
    class CapturesResponse < Ingenico::Direct::SDK::DataObject
      attr_accessor :captures

      # @return (Hash)
      def to_h
        hash = super
        hash['captures'] = @captures.collect(&:to_h) if @captures
        hash
      end

      def from_hash(hash)
        super
        if hash.key? 'captures'
          raise TypeError, "value '%s' is not an Array" % [hash['captures']] unless hash['captures'].is_a? Array
          @captures = []
          hash['captures'].each do |e|
            @captures << Ingenico::Direct::SDK::Domain::Capture.new_from_hash(e)
          end
        end
      end
    end
  end
end
