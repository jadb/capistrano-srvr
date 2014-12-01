# Capistrano::srvr

Servers tasks for Capistrano v3.*

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'capistrano', '~> 3.0.0'
gem 'capistrano-srvr'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install capistrano-srvr

## Usage

Require the module in your `Capfile`:

```ruby
require 'capistrano/srvr'
```

From the command line:

```
$ cap production srvr:uptime
$ cap production srvr:list
$ cap production srvr:launch[path/to/script]
```

or from any of your custom tasks:

```
task :my_custom_task do
  invoke "srvr:launch[path/to/script]"
end
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
