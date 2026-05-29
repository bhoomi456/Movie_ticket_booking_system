require_relative "ticket_manager"
require_relative "booking_system"
require_relative "movie"
require_relative "customer"


m = Movie.new("dhurandar", "hindi", 200, 50)
m2 = Movie.new("border 2", "english", 250, 40)

c = Customer.new("bhoomi", 101)

system = BookingSystem.new
system.add_movie(m)
system.add_movie(m2)

puts "------------------------------"

system.add_customer(c)
puts "------------------------------"


system.book_tickets(101, "dhurandar", 3)
# system.book_tickets(102, "dhurandar", 3)  # it raise customer not found error
# system.book_tickets(101, "dhurandar", -1) #it raise Invalid Ticket count
# system.book_tickets(101, "dhurandar", 51) # it raise Not enough seats

puts "------------------------------"


puts "Available seats of #{m.movie_title} = #{m.available_seats}"
puts "Available seats of #{m2.movie_title} = #{m2.available_seats}"

puts "------------------------------"
system.display_booking_details(101)


# puts "------------------------------"

system.cancle_tickets(101, "dhurandar")
puts "------------------------------"


puts "Available seats of #{m.movie_title} = #{m.available_seats}"
puts "------------------------------"



