# Proscenium::ViewComponent

Enhances [ViewComponent](https://viewcomponent.org/) by integrating it with the [Proscenium](https://proscenium.rocks/) framework. It supports automatic side-loading of assets, and CSS Modules for scoped styling.

## Installation

Install the gem and add to the application's Gemfile by executing:

```bash
bundle add proscenium-view_component
```

If bundler is not being used to manage dependencies, install the gem by executing:

```bash
gem install proscenium-view_component
```

## Usage

Simply write your ViewComponent classes and inherit from `Proscenium::ViewComponent::Base`.

```ruby
class MyView < Proscenium::ViewComponent::Base
  def call
    tag.h1 'Hello World'
  end
end
```

### Side-loading

Any ViewComponent class that inherits `Proscenium::ViewComponent::Base` will automatically be [side-loaded](https://github.com/joelmoss/proscenium?tab=readme-ov-file#side-loading).

### CSS Modules

[CSS Modules](https://github.com/joelmoss/proscenium?tab=readme-ov-file#css-modules) are fully supported in ViewComponent classes, with access to the [`css_module` helper](https://github.com/joelmoss/proscenium?tab=readme-ov-file#in-your-views) if you need it.

```ruby
# /app/components/user_component.rb
class UserComponent < Proscenium::ViewComponent::Base
  def view_template
    div.h1 @user.name, class: css_module(:user_name)
  end
end
```

```css
/* # /app/components/user_component.module.css */
.userName {
  color: red;
  font-size: 50px;
}
```

The view above will be rendered something like this:

```html
<h1 class="user_name-ABCD1234">Joel Moss</h1>
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/joelmoss/proscenium-view_component.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
