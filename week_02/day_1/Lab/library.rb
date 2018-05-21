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

  def book_details(title)
    for book in @books
      if (book[:title] == title)
        return book
      end
    end
  end

end
