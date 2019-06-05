# frozen_string_literal: true

class RailsResponderGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('templates', __dir__)

  def valid!
    RailsResponder.valid!(name)
  end

  def generate
    template template_name, file_path
  end

  private

  # @return [String]
  def template_name
    'rails_responder.rb.erb'
  end

  using RailsConstNormalizer

  # @return [String]
  def klass
    name.to(:responder, :klass)
  end

  # @return [String]
  def file_name
    name.to(:responder, :file_name)
  end

  # @return [Pathname]
  def file_path
    Rails.root.join('app').join(name.to(:responder, :file_path))
  end
end
