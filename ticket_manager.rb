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
end