# frozen_string_literal: true

module ImageInput
  module Helpers
    def image_input(form, field, accept: %i(png jpeg gif), direct_upload: true)
      render(
        'image_input/input',
        form: form,
        field: field,
        blob: form.object.public_send(field),
        accept: accept.map { |a| Mime[a].to_s }.join(','),
        direct_upload: direct_upload
      )
    end
  end
end
