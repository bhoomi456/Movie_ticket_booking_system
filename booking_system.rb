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

  def find_booking(customer, movie_title)
    customer.booked_tickets.find do |booking|
      booking[:movie_title] == movie_title
    end
  end

  def display_booking_details(customer_id)
    customer = find_customer(customer_id)
    raise "Customer not found" if customer.nil?

    puts "----Booking details----"
    customer.booked_tickets.each do |booking|
      puts "Customer name : #{customer.name}"
      puts "Movie : #{booking[:movie_title]}"
      puts "Ticket_count: #{booking[:ticket_count]}"
      puts "Amount: #{booking[:amount]}"
      puts "---------------------------"
    end

    raise "No booking is there" if customer.booked_tickets.empty?
  end
end