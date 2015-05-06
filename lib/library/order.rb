module Library
  class Order
    attr_accessor :book, :reader, :date

    def initialize book, reader, date
      @book, @reader, @date = book, reader, date
    end

    def to_s
      puts "Book: #{@book.title}, reader: #{@reader.name}"
    end
  end
end