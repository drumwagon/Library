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
      puts books.title + ' is currently ' #@status #+ book.status 
    end
  end

# This checks the status of a book in the library and will 
# show it as borrowed if it is checked out
  def borrowed_books
    # if book.status != "Available"
    #   return book.status = "checked out"
    # end
  end

# This checks the status of a book in the library and will 
# show it as available if it is not checked out
  def available_books
    # if book.status = "available"
    #   puts book.title + " is available to check out."
    # end
  end 

# Public: Takes each of the book instances added to the "Books" class below and pushes them to 
# "Books" class below and pushes them to the array of the created Library
  def add_book(book)
    @books << book
    puts "Added " + book.title + " to the library."
  end

# Public: Assigns a book in the library to a user and moves it to checked out from the library
  def check_out(user, book)
    if user.borrowed_books.size < 2 && book.status != "Checked out" && user.standing != "Bad"
      user.borrowed_books.size = user.borrowed_books.size + 1
      book.status = "Checked out"
      user.borrowed_books << borrowed_books
      book.owner = borrower.name
    elsif user.borrowed_books.size == 2
      puts "Sorry, you cannot check out any more books"
    else
      return "Sorry, that book is not available."
    end
  end

# Public: Removes a book from current user and returns it to available in the library
  def check_in(book)
  end
end

# created a standing instane

# Public: creates instances of the Borrower class and
# creats a unique name variable for each borrower
class Borrower
  def initialize(name)
    @name = name
    @books = []
  end

# Identifies books that are currently checked out to a specific user.
  def borrowed_books
    @borrowed_books << book
  end

  def name
    @name
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
    @status = "available"
    @borrower = nil
  end

  def title
    @title
  end

  def author
    @author
  end

  def status
    @status = "Available"
  end

  # def status=(new_value)
  #   @status = new_value
  # end

  # def borrower
  #   @borrower
  # end

  # def borrower(new_value)
  #   @borrower = new_value
  # end
end
