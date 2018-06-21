import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.assertEquals;


public class TestBook {
    Book book1;

    @Before
    public void setUp() {
        book1 = new Book("Murder on the Orient Express", "Agatha Christie", "Crime");
    }

    @Test
    public void testBookHasTitle() {
        assertEquals("Murder on the Orient Express", book1.getTitle());
    }

    @Test
    public void testAuthor() {
        assertEquals("Agatha Christie", book1.getAuthor());
    }

    @Test
    public void testGenre() {
        assertEquals("Crime", book1.getGenre());
    }
}
