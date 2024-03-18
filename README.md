# Flowbite

> [!NOTE]
> This gem is only useful for projects without [Node.js](https://nodejs.org/en) and asset bundling

Integrates [Flowbite](https://github.com/themesberg/flowbite) with the [Ruby on Rails Asset Pipeline](https://guides.rubyonrails.org/asset_pipeline.html).

Works great with the following gems:
* [`importmap-rails`](https://github.com/rails/importmap-rails)
* [`tailwindcss-rails`](https://github.com/rails/tailwindcss-rails)
* [`propshaft`](https://github.com/rails/propshaft)
* [`sprockets-rails`](https://github.com/rails/sprockets-rails)

## Links to official documentation:
- [Introduction](https://flowbite.com/docs/getting-started/introduction/)
- [Official guide to using with Ruby on Rails](https://flowbite.com/docs/getting-started/rails/)

## Installation

Add `flowbite` to your Gemfile:

```ruby
gem "flowbite", "~> 2.3"
```

### Importmaps
You can pin either `flowbite.esm.js` in `config/importmap.rb`:

```ruby
pin "flowbite", to: "flowbite.esm.js"
```

### Tailwind CSS for Rails

[Tailwind CSS for Rails gem](https://github.com/rails/tailwindcss-rails) is wraps the [standalone executable version](https://tailwindcss.com/blog/standalone-cli) of the Tailwind CSS framework, which means to add additional plugins you need to download the script to your server. To solve this problem, we wrote a rake task:

```bash
bin/rails flowbite:bundler:plugin
```

it's copy a `plugin.js` to `vendor/javascript/flowbite` folder. To start using it, just require flowbite as plugin inside the `config/tailwind.config.js` file

```js
module.exports = {
  // ...
  plugins: [
    // ...
    require("../vendor/javascript/flowbite/plugin.js")
  ]
  // ...
}
```

### Classic way

This gem automatically registers `flowbite.js`, `flowbite-plugin.js`, `flowbite.esm.js`, and `flowbite.css` dependencies in your asset pipeline. Now you can use them in your project.

As a dependency through [*Sprockets*](https://github.com/rails/sprockets-rails), add the following code to your `application.js`:

```js
//= require flowbite
```

and `application.css`:

```css
/*
 *= require flowbite
 */
```

... or by adding it to your template (also works with [Propshaft](https://github.com/rails/propshaft)):

```erb
<%= javascript_include_tag :flowbite %>
<%= stylesheet_link_tag :flowbite %>
```

## Contributing
Bug reports and pull requests are welcome on GitHub at https://github.com/iwdt/flowbite-rails.

1. Fork it (https://github.com/iwdt/flowbite-rails/fork)
1. Create your feature branch (`git checkout -b my-new-feature`)
1. Commit your changes (`git commit -am 'Add some feature'`)
1. Push to the branch (`git push origin my-new-feature`)
1. Create a new Pull Request

Usefull scripts for development:
1. Update flowbite deps:

```bash
bun update flowbite
```

1. Build javascript:

```bash
bun build:js
```

1. Build stylesheets:

```bash
bun build:css
```

1. Build gem:
```bash
gem build
```

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
