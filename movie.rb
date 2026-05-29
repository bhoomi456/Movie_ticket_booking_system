class Movie 
  attr_accessor :movie_title, :language, :ticket_price, :available_seats
  def initialize(movie_title, language, ticket_price, available_seats)
    @movie_title = movie_title
    @language = language
    @ticket_price = ticket_price
    @available_seats = available_seats
  end
end

