# frozen_string_literal: true

module ImageInput::Helpers
  def image_input(form, field)
    render 'image_input/input', form: form, field: field
  end
end
