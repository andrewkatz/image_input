# Image Input

A Rails helper for a simple, clean image input for use with Active Storage.

```erb
<%= form_with(model: User.new) do |form| %>
  <%= image_input form, :profile_picture %>
<% end %>
```

NOTE: The styles of this project are constructed using Tailwind CSS.

## Installation

Add to your Gemfile:

```ruby
gem 'image_input'
```

```sh
bundle install
yarn add @mainkatz/image-input
```

Register Stimulus controller. By default in Rails, this is in `controllers/index.js`.

```js
import ImageInputController from '@mainkatz/dropzone-input';

application.register('image-input', ImageInputController);
```

## Development

To develop this locally you can update your Gemfile:

```ruby
gem 'image_input', path: 'PATH_TO_PROJECT'
```

In this project run:

```sh
yarn link
```

In your app project run:

```sh
yarn link @mainkatz/image-input
```

To auto-recompile this project, run:

```sh
yarn run dev
```
