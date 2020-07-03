[![Donate](https://img.shields.io/badge/Donate-PayPal-green.svg)](https://www.paypal.me/guillaumebriday)
![](https://github.com/guillaumebriday/external_link_to/workflows/Lint/badge.svg)
[![](https://img.shields.io/gem/dt/external_link_to.svg)](https://rubygems.org/gems/external_link_to)
[![](https://img.shields.io/gem/v/external_link_to.svg)](https://rubygems.org/gems/external_link_to)
[![](https://img.shields.io/github/license/guillaumebriday/external_link_to.svg)](https://github.com/guillaumebriday/external_link_to)

# external_link_to

This gem provides a wrapper around the built in `ActionView::Helpers::UrlHelper#link_to` method available in Rails.
It creates a link tag with `target="_blank"` and `rel="noopener noreferrer"` attributes by default. Simple as that.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'external_link_to'
```

And then execute:
```bash
$ bundle
```

## Usage

For instance, this link: 
```ruby
link_to 'Home', root_path, rel: 'noopener noreferrer', target: '_blank'
# => <a rel="noopener noreferrer" target="_blank" href="/">Profile</a>Home
```

is exactly the same as:
```ruby
external_link_to 'Home', root_path
# => <a rel="noopener noreferrer" target="_blank" href="/">Profile</a>Home
```

Basicaly, if you want to open a link in a new tab, just replace `link_to` with `external_link_to`:

```diff
- link_to 'Home', root_path
+ external_link_to 'Home', root_path
```

## Contributing

Do not hesitate to contribute to the project by adapting or adding features ! Bug reports or pull requests are welcome.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
