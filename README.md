# Palombe [![Gem Version](https://badge.fury.io/rb/palombe.svg)](https://rubygems.org/gems/palombe)

Palombe lets you send and receive messages synchronously through different processes using named pipes

## Quick example

### Thread A
```ruby
require 'palombe'

Palombe.send "foo", "bar"
```

### Thread B

```ruby
require 'palombe'

puts Palombe.receive "foo" # bar
```
