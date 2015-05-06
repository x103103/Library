module Library
  class Book
    attr_reader :title, :author, :count_orders

    def initialize title, author
      @title, @author = title, author
      @count_orders = 0
    end

    def iterate_count_orders
      @count_orders = @count_orders + 1
    end
  end
end