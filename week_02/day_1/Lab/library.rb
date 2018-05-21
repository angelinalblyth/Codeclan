class Library

  def initialize(books)

    @books = books
  end

  def all_books
    return @books
  end

  def book_title
    for book in @books
      return book[:title]
    end
  end

# define book_rental_details
def book_rental_details

end



# def book_rental_details(title)
#   book_details = []
#   for book in [:title]
#     if book == title
#       book_details = [:rental_details]
#     end
#     return book_details
#   end
# end




end
