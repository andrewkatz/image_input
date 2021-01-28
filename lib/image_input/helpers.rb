# frozen_string_literal: true

module ImageInput
  module Helpers
    def image_input(
      form,
      field,
      accept: %i(png jpeg gif),
      direct_upload: true,
      button_class: nil,
      image_class: nil,
      **options
    )
      render(
        'image_input/input',
        form: form,
        field: field,
        blob: form.object.public_send(field),
        accept: accept.map { |a| Mime[a].to_s }.join(','),
        direct_upload: direct_upload,
        button_class: button_class,
        image_class: image_class,
        **options
      )
    end
  end
end
