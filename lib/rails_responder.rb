# frozen_string_literal: true

require 'rails_responder/railtie'
require 'rails_responder/extender'

module RailsResponder
  using RailsResponder::Extender

  class << self
    def valid!(str)
      str.valid!
    end
  end
end
