require "library/version"
require "library/book"
require "library/person"
require "library/order"

module Library
  class Library
    attr_accessor :books, :orders, :readers, :authors

    @@libraries = []

    def initialize(args={})
      defaults = {
          :books    => [],
          :orders    => [],
          :readers => [],
          :authors => []
      }
      defaults.merge(args).each do |attr, val|
        instance_variable_set("@#{attr}", val) if defaults.has_key?(attr) && (not val.nil?)
      end if args

      @@libraries << self
    end

    def add_book book
      @books << book
    end

    def add_order title, reader
      add_reader reader unless @readers.include? reader

      book = @books.detect {|b| b.title == title }

      if book.nil?
        puts "book not found"
        return false
      end

      order = Order.new book, reader, Time.new
      @orders << order

      book.iterate_count_orders
      order
    end

    def add_reader reader
      @readers << reader unless @readers.include? reader
    end

    def add_author author
      @authors << author unless @authors.include? author
    end


    def most_popular_book
      book = @books.select{|x| true}
                 .max_by{|x| x.count_orders}

      puts 'Most popular book is "' + book.title + '"'
      book
    end

    def best_reader
      reader = @readers.select{|x| true}
                   .max_by{|x| x.count_orders}

      puts reader.name + ' often takes the book'
      reader
    end

    def count_readers_of_top_books position
      index = position - 1
      book = @books.sort_by { |book| book.count_orders}.reverse[index]
      puts 'Book "'+book.title+'" has '+book.count_orders.to_s+' readers'
    end

    class << self
      def libraries
        @@libraries
      end

      def pull_book book
        @@libraries.each do |library|
          library.add_book book
        end
      end

      def pull_author author
        @@libraries.each do |library|
          library.add_author author
        end
      end

      def save_to_file
        f = File.open("library_data", "w")
        f.write(Marshal.dump(@@libraries))
        f.close
      end

      def load_from_file
        if File.exist? "library_data"
          dump_data = File.read("library_data")
          @@libraries = Marshal.load(dump_data)
        end
      end
    end
  end
end
