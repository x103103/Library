module Library
  class Person
    attr_reader :name

    def initialize(opts = {})
      @name = opts[:name]
    end

  end

  class Reader < Person
    attr_accessor :email, :city, :street, :house, :count_orders

    def initialize(opts = {})
      @email = opts[:email]
      @city = opts[:city]
      @street = opts[:street]
      @house = opts[:house]

      @count_orders = 0

      super opts
    end

    def order_book title, library
      order = library.add_order title, self
      iterate_count_orders if order
    end

    def iterate_count_orders
      @count_orders = @count_orders + 1
    end


  end

  class Author < Person
    attr_accessor :biography

    def initialize(opts = {})
      @biography = opts[:biography]
      Library.pull_author self

      super opts
    end

    def write_book title
      book = Book.new title, self
      Library.pull_book book
    end

  end
end