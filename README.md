# Palombe [![Gem Version](https://badge.fury.io/rb/palombe.svg)](https://rubygems.org/gems/palombe)

Palombe lets you send and receive messages synchronously through different processes using named pipes

## Quick example

```ruby
require 'palombe'

Palombe.send "foo", "bar"
puts Palombe.receive "foo" # bar
```
