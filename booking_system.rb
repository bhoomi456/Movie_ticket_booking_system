class BookingSystem
  include TicketManager

  attr_accessor :movies, :customers

  def initialize
    @movies = []
    @customers = []
  end

  def add_movie(movie)
    @movies << movie
    puts "#{movie.movie_title} Movie Added Succefully"
  end

  def add_customer(customer)
    @customers << customer
    puts "#{customer.name} Added successfully"
  end

  def find_customer(customer_id)
    @customers.find {|c| c.customer_id == customer_id}
  end

  def find_movie(movie_title)
    @movies.find {|m| m.movie_title == movie_title}
  end

  def add_booking(customer, movie, ticket_count, amount)
    booking = {
      movie_title: movie.movie_title,
      ticket_count: ticket_count,
      amount: amount
    }
    customer.booked_tickets << booking
  end
end