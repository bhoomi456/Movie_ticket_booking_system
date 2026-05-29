require_relative "ticket_manager"
require_relative "booking_system"
require_relative "movie"
require_relative "customer"


m = Movie.new("dhurandar", "hindi", 200, 50)

c = Customer.new("bhoomi", 101)

system = BookingSystem.new
system.add_movie(m)
puts "------------------------------"

system.add_customer(c)
puts "------------------------------"


system.book_tickets(101, "dhurandar", 3)
puts "------------------------------"


puts "Available seats of #{m.movie_title} = #{m.available_seats}"
puts "------------------------------"


system.display_booking_details(101)
puts "------------------------------"


system.cancle_tickets(101, "dhurandar")
puts "------------------------------"


puts "Available seats of #{m.movie_title} = #{m.available_seats}"
puts "------------------------------"



