module TicketManager
  def book_tickets(customer_id, movie, ticket_count)
    customer = find_customer(customer_id)

    raise "Customer not found" if !customer
    raise "Invalid Ticket Count" if ticket_count < 0
    raise "Not enough seats" if ticket_count > movie.available_seats

    movie.available_seats -= ticket_count
    puts "tickets booked successfully"
  end
end