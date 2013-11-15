# 
# 
class Library
  def initialize
    @books = []
  end

  def books
    @title = title
    @author = author
  end

# Will print out list of all books in the library
  def list_books
    @books.each do |books|
      puts 'This book is currently in the library : ' + books.title + ' .'
    end
  end

  def borrowed_books
  end

  def available_books
  end

# Public: Takes each of the book instances added to the "Books" class below and pushes them to 
# "Books" class below and pushes them to the array of the created Library
  def add_book(book)
    @books << book
  end

  def check_out(user, book)
    
  end

  def check_in(book)
  end
end

# Public: creates instances of the Borrower class and
# creats a unique name variable for each borrower
class Borrower
  def initialize(name)
    @name = name
  end

# Identifies books that are currently checked out.
  def borrowed_books
  end

  def name
  end

# Defines the number of books checked out
  def borrowed_books_count
  end

  def borrowed_books_list
  end
end

# Public: creates a new book entry to the library class and
# passes the book arguments (title & author) to the new item. 
class Book
  def initialize(title, author)
    @title = title
    @author = author
  end

  def title
    @title
  end

  def author
    @author
  end
end
