module TicketManager
  def book_tickets(customer_id, movie, ticket_count)
    customer = find_customer(customer_id)
    movie = find_movie(movie)

    raise "Customer not found" if !customer
    raise "Invalid Ticket Count" if ticket_count < 0
    raise "Not enough seats" if ticket_count > movie.available_seats

    amount = caculated_total_amount(movie, ticket_count)
    booking = add_booking(customer, movie, ticket_count, amount)

    movie.available_seats -= ticket_count
    puts "tickets booked successfully #{booking}"
  end

  def caculated_total_amount(movie, ticket_count)
    movie.ticket_price * ticket_count
  end

  def cancle_tickets(customer_id, movie_title)
    customer = find_customer(customer_id)
    raise "Customer not found" if customer.nil?

    movie = find_movie(movie_title)
    raise "Movie not found" if movie.nil?

    booking = find_booking(customer, movie_title)
    raise "Booking not found" if booking.nil?

    customer.booked_tickets.delete(booking)
    movie.available_seats += booking[:ticket_count]

    puts "#{booking} cancled successfully of customer #{customer.name}"
  end
end