# frozen_string_literal: true

module RailsResponder
  module Extender
    refine String do
      # @return [String]
      # @raise [RuntimeError] if not match format `/.*#.*/`
      def valid!
        match?(/.*#.*/) ? self : raise("invalid format `#{self}`.")
      end
    end
  end
end
