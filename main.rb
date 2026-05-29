require_relative "ticket_manager"
require_relative "booking_system"
require_relative "movie"
require_relative "customer"


m = Movie.new("dhurandar", "hindi", 200, 50)

c = Customer.new("bhoomi", 101)

system = BookingSystem.new
system.add_movie(m)
system.add_customer(c)
system.book_tickets(101, "dhurandar", 3)
puts m.available_seats
puts c.booked_tickets
system.cancle_tickets(101, "dhurandar")
puts m.available_seats
