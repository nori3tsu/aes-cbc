# AES::CBC

This is an easy-to-use encryption library specialized for aes-128-cbc.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'aes/cbc'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install aes-cbc

## Usage

```
require 'aes-cbc'

key = AES::CBC.generate
# => "cff7f10e35485c096f55cef88b0b5463"

iv = AES::CBC.generate
# => "da7d1be1554419c50e30a57cc03dc3a8"

hex = AES::CBC.encrypt(key, iv, 'hello')
# => "QIT3wHuMqKD1JVQxiB6JdQ=="

text = AES::CBC.decrypt(key, iv, hex)
# => "hello"
```

