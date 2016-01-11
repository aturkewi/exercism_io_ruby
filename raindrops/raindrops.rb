class Raindrops

  Conversion = {3=>'Pling', 5=>'Plang', 7=>'Plong'}
  VERSION = 1
  
  def self.convert(number)
    sounds = add_to_string(number)
    sounds == '' ? number.to_s : sounds
  end

  def self. add_to_string(number)
    Conversion.each_with_object('') do |(prime, sound),string|
      string << sound if number % prime == 0
    end
  end

end
