import org.junit.Before;
import org.junit.Test;

import java.util.HashMap;

import static org.junit.Assert.assertEquals;

public class TestLibrary {
    Book book1;
    Book book2;
    Book book3;
    Library library;

    @Before
    public void setUp() throws Exception {
        book1 = new Book("Murder on the Orient Express", "Agatha Christie", "Crime");
        book2 = new Book("The Handmaid's Tale", "Margaret Atwood", "SciFi");
        book3 = new Book("1Q84", "Haruki Murakami", "SciFi");

        library = new Library();
    }

    @Test
    public void libraryIsInitiallyEmpty() {
        assertEquals(0, library.bookCount());
    }

    @Test
    public void canAddBook() {
        library.addBook(book1);
        assertEquals(1, library.bookCount());
    }

    @Test
    public void hasCapacity() {
        assertEquals(1, library.getCapacity());
    }

    @Test
    public void cantAddBeyondCapacity() {
        library.addBook(book1);
        library.addBook(book2);
        assertEquals(1, library.bookCount());
    }

    @Test
    public void canCountGenres() {
        library.setCapacity(100);
        library.addBook(book1);
        library.addBook(book2);
        library.addBook(book3);

        HashMap<String, Integer> expected = new HashMap<String, Integer>();
        expected.put("Crime", 1);
        expected.put("SciFi", 2);

        assertEquals(expected, library.genreCount());
    }
}
