require 'rails_helper'
require 'rails_responder/extender'

describe 'RailsResponder' do
  using RailsResponder::Extender

  describe :valid! do
    let(:method_name) { :valid! }
    let(:receiver) { 'controller#index' }
    let(:actual) { receiver.send(method_name) }

    it(:should_nothing_raise) { actual }

    context :invalid_format do
      let(:receiver) { 'controllerIndex' }
      let(:expected) { "invalid format `#{receiver}`." }
      it :should_raise do
        expect { receiver.send(method_name) }.to raise_error(RuntimeError, expected)
      end
    end
  end
end
