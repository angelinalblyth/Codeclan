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

  def rental_details(title)
    for book in @books
      if (book[:title] == title)
        return book[:rental_details]
      end
    end
  end


  def add_new_book(new_book)
    @books.push(new_book)
  end

end
