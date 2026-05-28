class Customer
  attr_accessor :name, :customer_id
  def initialize(name, customer_id)
    @name = name
    @customer_id = customer_id
    @booked_tickets = []
    @customers = []
  end

  def add_customer
    @customers << self
    puts "#{@name} Added successfully"
  end
end

c = Customer.new("bhoomi", 101)
c.add_customer