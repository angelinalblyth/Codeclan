class Library

  attr_accessor :books

  def initialize()
    @books = []
  end

  def add_book(book)
    @books << book
  end

  def get_book_details(title)
    for book in @books
      if book[:title] == title
        return book
      end
    end
  end

  def get_rental_details(title)
    for book in @books
      if book[:title] == title
        return book[:rental_details]
      end
    end
  end

  def add_title(title)
    @books.push({
      title: "catch 22",
      rental_details: {
        student_name: "",
        date: ""
      }
      })
  end


  def change_rental_details(title, student_name, date)
    book = get_book_details(title)
    book[:rental_details][:student_name] = student_name
    book[:rental_details][:date] = date
  end


end
