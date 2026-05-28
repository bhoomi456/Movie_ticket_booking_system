class Movie 
  attr_accessor :name, :language, :ticket_price, :available_seats
  def initialize(title, language, ticket_price, available_seats)
    @title = title
    @language = language
    @ticket_price = ticket_price
    @available_seats = available_seats
    @movie = []
  end

  def add_movie
    @movie << self
    puts "#{@title} Movie Added Succefully"
  end
end

m = Movie.new("dhurandar", "hindi", 200, 50)
m.add_movie