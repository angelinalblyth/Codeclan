import org.junit.*;
import static org.junit.Assert.assertEquals;


public class WordCollectionTest {

    private WordCollection myWords;

    @Before
    public void before(){
        myWords = new WordCollection();
    }

    @Test
    public void canGetWordCount(){
        assertEquals(0, myWords.getWordCount());
    }

    @Test
    public void canAddObject(){
        myWords.add("Joe");
        myWords.add("versus Java");
        assertEquals("versus Java", myWords.getWords()[0]);
    }



}