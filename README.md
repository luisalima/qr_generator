# QrGenerator

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'qr_generator'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install qr_generator

## Usage

```ruby
require 'qr_generator'

QRGenerator.new baseline: 'http://bla/game/',
                number: 100,
                target: '/home/allThoseQrs'
```

## Contributing

1. Fork it ( http://github.com/<my-github-username>/qr_generator/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
