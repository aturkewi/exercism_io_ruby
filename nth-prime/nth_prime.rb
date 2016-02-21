class Prime


  def self.nth(n)
    raise ArgumentError if n <= 0
    primes=[2]
    i=2
    until primes.length == n
      i+=1
      is_prime = true
      primes.each do |prime|
        if i%prime == 0
          is_prime = false
        end
      end
      primes << i if is_prime # ?(primes, i)
    end
    primes.last
  end

  private

  # def self.is_prime?(primes, i)
  #   is_prime = true
  #   primes.each do |prime|
  #     if i%prime == 0
  #       is_prime = false
  #     end
  #   end
  # end

end
