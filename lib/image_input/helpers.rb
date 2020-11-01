# frozen_string_literal: true

module ImageInput
  module Helpers
    def image_input(form, field)
      render 'image_input/input', form: form, field: field
    end
  end
end
