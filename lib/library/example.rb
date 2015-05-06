Library.load_from_file

library = Library.new

reader = Reader.new name:'Alexandr Oleynik', street:'First Avenue'

author = Author.new name:'Chuck Palahniuk', biography: 'nil'

author.write_book 'Fighting Club'
author.write_book 'Fighting Club2'
author.write_book 'Fighting Club3'
author.write_book 'Fighting Club4'
author.write_book 'Fighting Club5'
author.write_book 'Fighting Club6'

reader.order_book 'Fighting Club', Library.libraries[0]
reader.order_book 'Fighting Club', library
reader.order_book 'Fighting Club', library
reader.order_book 'Fighting Club', library
reader.order_book 'Fighting Club', library
reader.order_book 'Fighting Club2', library
reader.order_book 'Fighting Club2', library
reader.order_book 'Fighting Club2', library
reader.order_book 'Fighting Club3', library
reader.order_book 'Fighting Club4', library
reader.order_book 'Fighting Club5', library

Library.libraries[0].count_readers_of_top_books 1
library.best_reader
library.count_readers_of_top_books 1
library.count_readers_of_top_books 2
library.count_readers_of_top_books 3

Library.save_to_file