[![Build Status](https://travis-ci.org/kennycyb/tabpane-bootstrap-rails.svg?branch=master)](https://travis-ci.org/kennycyb/tabpane-bootstrap-rails)

# Tabpane::Bootstrap::Rails

Add Bootstrap tabs easily to rails application.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'tabpane-bootstrap-rails', github: 'kennycyb/tabpane-bootstrap-rails'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install tabpane-bootstrap-rails

## Usage

### Using Bootstrap

See: https://github.com/twbs/bootstrap-sass


Add to application.js:
```
//= require bootstrap-sprockets
```

Add to application.scss
```
@import "bootstrap-sprockets";
@import "bootstrap";
```

### Tabpane

show.html.erb
```
<%= tabpane do |pane|
  pane.link :google, 'http://www.google.com'
  pane.link :microsoft, 'http://www.microsoft.com'
  pane.panel :info      # Create a tab with content from _info.html.erb
  pane.panel :details   # Create a tab with content from _details.html.erb
  
  pane.active = :info   # To specify which tab should be active
end
%>
```

_info.html.erb
```
   <h1>Info</h1>
   Panel content for :info
```

_details.html.erb
```
  <h1><Details</h1>
  Panel content for :details
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/kennycyb/tabpane-bootstrap-rails. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
