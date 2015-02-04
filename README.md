# Capistrano::EmberCli

Ember CLI task for Capistrano 3.x

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'capistrano-ember_cli'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install capistrano-ember_cli

## Usage

Require in `Capfile` to use the default task:

```ruby
require 'capistrano/ember_cli'
```

The task will run before `deploy:updated` as part of Capistrano's default deploy.

This gem assumes that you have already executed `npm install` and `bower install`. You could use [capistrano/npm](https://github.com/capistrano/npm) and [capistrano/bower](https://github.com/platanus/capistrano-bower) to achieve that.

### Configuration

Below are all the configuration values and their defaults.
```ruby
set :ember_cli_roles, :web
set :ember_cli_binary, './node_modules/ember-cli/bin/ember'
set :ember_cli_output_path, 'dist/'
set :ember_cli_target_path, nil
set :ember_cli_env, nil
```

Here are short descriptions for the less obvious configuration values:
* `:ember_cli_target_path` is the root directory of the Ember CLI project. It defaults to the `release_path`.
* `:ember_cli_env` is the environment with which the project will be built. It defaults to the current `stage`.

## Contributing

1. Fork it ( https://github.com/netguru/capistrano-ember_cli/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
