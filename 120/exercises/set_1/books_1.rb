class Book
  attr_writer :author, :title

  def initialize(author, title)
    @author = author
    @title = title
  end

  def to_s
    %("#{title}", by #{author})
  end
end

book = Book.new("J.K. Rowling", "Harry Potter")
puts %(The author of "#{book.title}" is #{book.author}.)
puts %(book = #{book}.)
