# Trivial Log Formatter

A trivial Logger::Formatter.

## Installation

Add this line to your application's Gemfile:

```ruby
    gem 'trivial_log_formatter'
```

And then execute:

```bash
    $ bundle
```

Or install it yourself as:

```bash
    $ gem install trivial_log_formatter
```

## Usage

### Example Rails usage

```ruby
# in config/application.rb
config.logger = Logger.new(STDOUT)
config.logger.formatter = TrivialLogFormatter::Formatter.new
```

## Contributing

1. Fork it ( https://github.com/QuintSys/trivial_log_formatter/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
