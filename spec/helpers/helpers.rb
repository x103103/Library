module Helpers
  def new_book
    Library::Book.new('Title','Author')
  end
end