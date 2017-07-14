# OmniAuth Hootsuite

[![Gem Version](https://badge.fury.io/rb/omniauth-hootsuite.png)](http://badge.fury.io/rb/omniauth-hootsuite)
[![Build Status](https://travis-ci.org/hypemarks/omniauth-hootsuite.png?branch=master)](https://travis-ci.org/hypemarks/omniauth-hootsuite)
[![Code Climate](https://codeclimate.com/github/hypemarks/omniauth-hootsuite.png)](https://codeclimate.com/github/hypemarks/omniauth-hootsuite)
[![Dependency Status](https://gemnasium.com/hypemarks/omniauth-hootsuite.png)](https://gemnasium.com/hypemarks/omniauth-hootsuite)
[![Coverage Status](https://coveralls.io/repos/hypemarks/omniauth-hootsuite/badge.png?branch=master)](https://coveralls.io/r/hypemarks/omniauth-hootsuite?branch=master)

This is the OmniAuth strategy for authentication to [Hootsuite](https://hootsuite.com).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'omniauth-hootsuite'
```

And then, you need to add the following to your `config/initializers/omniauth.rb`:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :hootsuite, "consumer_key", "consumer_secret"
end
```

You will obviously have to put in your key and secret, which you get when you [register with Hootsuite](https://developer.hootsuite.com).
