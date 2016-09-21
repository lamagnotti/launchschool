class Flight
  def initialize(flight_number)
    @database_handle = Database.init
    @flight_number = flight_number
  end
end

# Don't provide any unnecessary attr_'s in your code
