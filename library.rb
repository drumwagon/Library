class Library
  def initialize
    @books = []
  end

  def books
    @title = title
    @author = author
    @status = "Available"
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
        puts book.title + " is currently checked out."
      end
    end
  end

# This checks the status of a book in the library and will 
# show it as available if it is not checked out
  def available_books
    @books.each do |book|
      if book.status == "Available"
        puts book.title + " is available to check out."
      end
    end
  end 


# Public: Assigns a book in the library to a user and changes it's statys to checked 
  def check_out(borrower, book)
    # @books.each do |book|
      if  (book.status != "Checked out") # (borrower.borrowed_books.size < 2) &&&& name.standing != "Bad"
        # borrower.borrowed_books = borrower.borrowed_books + 1
        book.status = "Checked out"
        # borrower.borrowed_books << borrowed_books
      #   book.owner = borrower
      # elsif name.borrowed_books.size == 2
      #   puts "Sorry, you cannot check out any more books"
      # else
      #   return "Sorry, that book is not available."
      # end
    end
    puts borrower.name + " has checked out " + book.title + "."
  end

# Public: Removes a book from current user and returns it to available in the library
  def check_in(book)
  end
end


# Public: creates instances of the Borrower class and
# creats a unique name variable for each borrower
class Borrower
  def initialize(name)
    @name = name
    @books = []
    # puts @name + " has been created."
  end

# Identifies books that are currently checked out to a specific user.
  def borrowed_books
    @borrowed_books = 0
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

  def title
    @title = title
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

  def borrower
    @borrower = borrower
  end

  # def borrower(new_value)
  #   @borrower = new_value
  # end
end
