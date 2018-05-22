require("minitest/autorun")
require("minitest/rg")
require_relative("../library_revision")

class TestLibrary < MiniTest::Test

  def setup

    @book1 = {
      title: "lord_of_the_rings",
      rental_details: {
        student_name: "Jeff",
        date: "20/05/18"
      }
    }

    @book2 = {
      title: "Graceling",
      rental_details: {
        student_name: "Angelina",
        date: "23/05/18"
      }
    }

    @book3 = {
      title: "Bitterblue",
      rental_details: {
        student_name: "Grant",
        date: "30/05/18"
      }
    }

    @library = Library.new()
    @library.add_book(@book1)
    @library.add_book(@book2)
    @library.add_book(@book3)


  end

  def test_library_has_books
    assert_equal(3, @library.books.length)
  end

  def test_can_get_book_details
    book = {
      title: "Bitterblue",
      rental_details: {
        student_name: "Grant",
        date: "30/05/18"
      }
      }

    assert_equal(book, @library.get_book_details("Bitterblue"))
    end

    def test_can_get_rental_details
      assert_equal({
        student_name: "Grant",
        date: "30/05/18"
        }, @library.get_rental_details("Bitterblue"))
      end


      def test_can_add_book_title
        @library.add_title("catch 22")
        expected_book = {
          title: "catch 22",
          rental_details: {
            student_name: "",
            date: ""
            }}
        assert_equal(expected_book, @library.get_book_details("catch 22"))
      end



      def test_can_change_rental_details
        @library.change_rental_details("Graceling", "Bob", "22/05/18")
        result = {
          title: "Graceling",
          rental_details: {
            student_name: "Bob",
            date: "22/05/18"
          }
        }
        assert_equal(result, @library.get_book_details("Graceling"))
      end
end
