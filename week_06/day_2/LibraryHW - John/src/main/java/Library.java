import java.util.ArrayList;
import java.util.HashMap;

public class Library {
    private ArrayList<Book> books;
    private int capacity;

    public Library() {
        this.books = new ArrayList<Book>();
        this.capacity = 1;
    }

    public int bookCount(){
        return this.books.size();
    }

    public void addBook(Book book) {
        if(bookCount() < capacity){
            this.books.add(book);
        }
    }

    public int getCapacity() {
        return capacity;

    }

    public void setCapacity(int capacity) {
        this.capacity = capacity;
    }

    public Book findBook(Book book) {
        int index = this.books.lastIndexOf(book);
        Book foundBook = this.books.remove(index);

        return foundBook;
    }

    public HashMap<String,Integer> genreCount() {
        HashMap<String, Integer> genres = new HashMap<String, Integer>();

        for(Book book : this.books){
            String genre = book.getGenre();

            if(genres.containsKey(genre)){
                // Add one to its count
                int oldCount = genres.get(genre);
                int newCount = oldCount + 1;
                genres.put(genre, newCount);
            }else{
                // Add the genre to the hashmap
                genres.put(genre, 1);
            }
        }

        return genres;
    }
}
