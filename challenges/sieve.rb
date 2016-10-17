class Sieve
  def initialize(number = 100)
    raise(argumentError, "Sorry. No numbers below 2 are prime. Try again.") if number < 2
    @numbers = (2..number).to_a
    @prime_array = []
  end

  def primes
    @numbers.each do |prime|
      @numbers.delete_if { |mult| mult != prime && (mult % prime).zero? }
    end
  end
end
