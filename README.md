# Opinionated Hashie

This is an opinionated extension to the excellent [Hashie](https://github.com/intridea/hashie) library.

It is intended to be an extension to the Hashie library and not standalone.  Because of this the classes exist in the `Hashie` namespace.

## Installation

Add this line to your application's Gemfile:

    gem 'opinionated-hashie'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install opinionated-hashie

## NamedArgsMash Usage

The NamedArgsMash class allows you to easily accept named arguments on your methods, ala:

```ruby
def my_method(opts={})
  opts = Hashie::NamedArgsMash.new(opts, {
    default: value,
    another: 'default',
    optional: nil,  # Set here just so you can see it is an option
  })

  if opts.optional
    # you passed in the optional value
  end

  # You can set values after the fact too, it is just a Mash
  opts.should_do_something = true if opts.optional == :magic

  opts
end

def calling_method
  my_method(optional: 'is_set')

  # It does not check for key validness and will allow
  # to pass keys you didn't specify in defaults:
  my_method(default: :different_value, bad: :value)

  # You can call methods over multiline for clear invocation intentions:
  my_method({
        arg1: value,
      thing2: another_value,
     option3: AND_SO_ON,
  })
end
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/opinionated-hashie/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
