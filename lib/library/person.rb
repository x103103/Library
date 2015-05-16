module Library
  class Person
    attr_reader :name

    def initialize(opts = {})
      @name = opts[:name]
    end

  end
end