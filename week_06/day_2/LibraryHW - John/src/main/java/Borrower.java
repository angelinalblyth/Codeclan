import java.util.ArrayList;

public class Borrower {
    private ArrayList<Book> books;

    public Borrower() {
        this.books = new ArrayList<Book>();
    }

    public int bookCount() {
        return this.books.size();
    }

    public void borrowFrom(Library library, Book book1) {
        // get the book from the library
        Book book = library.findBook(book1);

        // if the book is found, add it to the borrower's books
        if(book != null){
            this.books.add(book);
        }
    }
}
