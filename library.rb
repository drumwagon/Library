class Library

  attr_accessor :borrower, :book, :status, :borrowed_books_count
  def initialize
    @books = []
  end

  def books
    @title = title
    @author = author
    @status = "Available"
    @borrower = borrower
  end

# Will print out list of all books in the library
  def list_books
    @books.each do |books|
      puts books.title + " is currently " + books.status + "."
    end
  end

# Public: Takes each of the book instances added to the "Books" class below and pushes them to 
# "Books" class below and pushes them to the array of the created Library
  def add_book(book)
    @books << book
    puts "Added " + book.title + " to the library."
  end

# This checks the status of a book in the library and will 
# show it as borrowed if it is checked out
  def borrowed_books
    @books.each do |book|
      if book.status == "Checked out"
        puts book.title + " is currently checked out to " # + name.borrower + "."
      end
    end
  end

# This checks the status of a book in the library and will 
# show it as available if it is not checked out
  def available_books
    @books.each do |book|
      if book.status != "Checked out"
        puts book.title + " is available to check out."
      end
    end
  end 


# Public: Assigns a book in the library to a user and changes it's status to checked  out
  def check_out(borrower, book)
      if borrower.borrowed_books.size == 2
        puts "Sorry, " + borrower.name + ", you cannot check out any more books"
      elsif (book.status == "Checked out")  
        puts "Sorry, " + borrower.name + ", that book is not available."
      else
        borrower.borrowed_books_count = borrower.borrowed_books_count + 1
        book.status = "Checked out"
        borrower.borrowed_books << book
        # book.owner = borrower
        puts borrower.name + " has checked out " + book.title + "."
        return borrower
      end
  end

# Public: Removes a book from current user and returns it to available in the library
  def check_in(book)
  end
end


# Public: creates instances of the Borrower class and
# creats a unique name variable for each borrower
class Borrower
  attr_accessor :borrowed_books_count
  def initialize(name)
    @name = name
    @borrowed_books = []
    @borrowed_books_count = 0
  end

# Identifies books that are currently checked out to a specific user.
  def borrowed_books
    @borrowed_books
  end

# passes the name of the book borrower
  def name
    @name
  end

# Defines the number of books checked out per borrower
  def borrowed_books_count
    @borrowed_books_count
  end

# sorts through list of books borrowed by each borrower and 
# puts out list of book titles currently borrowed by borrower
  def borrowed_books_list
    @borrowed_books.each do |borrowed_books|
      puts borrowed_books.title
    end
  end
end

# Public: creates a new book entry to the library class and
# passes the book arguments (title & author) to the new item. 
class Book
  attr_accessor :status, :borrower, :title, :author
  def initialize(title, author)
    @title = title
    @author = author
    @status = "available"
    @borrower = nil
  end
end
