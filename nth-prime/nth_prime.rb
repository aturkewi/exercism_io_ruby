class Prime

  def self.nth(n)
    raise ArgumentError if n <= 0
    primes=[2]
    itterate_to_nth(primes, n)
    primes.last
  end

  private

  def self.itterate_to_nth(primes, n)
    i=2
    until primes.length == n
      i+=1
      primes << i if is_prime?(primes, i)
    end
  end

  def self.is_prime?(primes, i)
    is_prime = true
    primes.each {|prime| is_prime = false if i%prime == 0}
    is_prime
  end

end
