module Library
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
end