# Library

Simple ruby library

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'library', :git => "git://github.com/x103103/library"
```

## Usage

```ruby

require 'library'

Library.load_from_file

library = Library.new

reader = Reader.new name:'Alexandr Oleynik', street:'First Avenue'

author = Author.new name:'Chuck Palahniuk', biography: 'nil'

author.write_book 'Fighting Club'

reader.order_book 'Fighting Club', library

library.best_reader
library.count_readers_of_top_books 1

Library.save_to_file

```

