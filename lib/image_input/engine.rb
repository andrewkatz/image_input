# frozen_string_literal: true

module ImageInput
  class Engine < ::Rails::Engine
    initializer 'image_input.engine' do |_app|
      ActionView::Base.include ImageInput::Helpers
    end
  end
end
