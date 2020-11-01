# frozen_string_literal: true

class ImageInput::Engine < ::Rails::Engine
  initializer 'image_input.engine' do |_app|
    ActionView::Base.include ImageInput::Helpers
  end
end
