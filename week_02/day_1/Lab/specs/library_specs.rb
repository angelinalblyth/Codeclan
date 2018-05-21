require("minitest/autorun")
require("minitest/rg")
require_relative("../library")

class TestLibrary < MiniTest::Test

  def setup

    @books = [
      {
        title: "lord_of_the_rings",
        rental_details: {
          student_name: "Jeff",
          date: "01/12/16"
        }
      },
      {
        title: "graceling",
        rental_details: {
          student_name: "Angelina",
          date: "23/05/18"
        }
      }
    ]

    @library = Library.new(@books)

  end

  def test_all_books
    assert_equal(2, @library.all_books.length)
  end

  def test_book_titles
    assert_equal("lord_of_the_rings", @library.book_title)
  end

  def test_book_details
    result = @library.book_details("graceling")
    assert_equal({
      title: "graceling",
      rental_details: {
        student_name: "Angelina",
        date: "23/05/18"
      }
      }, result)
    end

    def test_get_rental_info
      result = @library.rental_details("graceling")
      assert_equal({student_name: "Angelina", date: "23/05/18"}, result)
    end

    def test_add_new_book
      new_book = {title: "Bitterblue", rental_details:{ student_name: "", date: ""}}
      result = @library.add_new_book(new_book)
      assert_equal([{title: "lord_of_the_rings",rental_details: {student_name: "Jeff",date: "01/12/16"}},{title: "graceling",rental_details: {student_name: "Angelina",date: "23/05/18"}},{title: "Bitterblue", rental_details:{ student_name: "", date: ""}}],result)
    end

    def test_changing_rental_details

    end

  end
