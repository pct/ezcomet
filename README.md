# Ezcomet Ruby SDK

EZComet is the best realtime web message pushing solution.

This gem is Ezcomet Ruby SDK.

## Installation

Add this line to your application's Gemfile:

    gem 'ezcomet'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ezcomet

## Usage (Sample Code)

    #!/usr/bin/env ruby
    require 'ezcomet'

    puts Ezcomet.push 'Your API Key', 'User Name', 'Channel Name', 'Test Message'
    puts Ezcomet.flush 'Your API Key', 'User Name', 'Channel Name'

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## LICENSE
The MIT License
