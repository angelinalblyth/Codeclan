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
  #
  # def test_book_rental_details
  #   books = Library.new("lord-of-the-rings", "Jeff", "01/12/16")
  #   assert_equal([:rental_details =>{:student_name =>"Jeff", :date =>"01/12/16"}], books.book_rental_details)
  # end



end
