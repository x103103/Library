module Library
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