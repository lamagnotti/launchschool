class BankAccount
  attr_reader :balance

  def initialize(starting_balance)
    @balance = starting_balance
  end

  # attr_reader created this method
  # def balance
  #  @balance
  # end

  def positive_balance?
    balance >= 0
  end
end

ben = BankAccount.new(1000)
p ben.positive_balance?

# The body of our positive_balance? method calls the
# balance method of the class, which then returns
# the value of the @balance instance variable

# Call structure
# positive_balance => balance => @balance
