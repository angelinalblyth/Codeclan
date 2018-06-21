import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class TestBorrower {
    Book book1;
    Book book2;
    Library library;

    Borrower borrower;

    @Before
    public void setUp() throws Exception {
        book1 = new Book("Murder on the Orient Express", "Agatha Christie", "Crime");
        book2 = new Book("The Handmaid's Tale", "Margaret Atwood", "SciFi");

        library = new Library();
        library.addBook(book1);

        borrower = new Borrower();
    }

    @Test
    public void borrowerHasNoBooksToBeginWith() {
        assertEquals(0, borrower.bookCount());
    }

    @Test
    public void testBorrowFrom() {
        borrower.borrowFrom(library, book1);
        assertEquals(0, library.bookCount());
        assertEquals(1, borrower.bookCount());
    }
}
