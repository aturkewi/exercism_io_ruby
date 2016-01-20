class Robot

  attr_reader :name

  @@names = []

  def initialize
    @name = get_uniq_name
  end

  def create_name
    letters = (0...2).map { (65 + rand(26)).chr }.join
    numbers = (0...3).map { rand(10) }.join
    letters + numbers
  end

  def get_uniq_name
    name = create_name
    while @@names.include?(name)
      name = create_name
    end
    @@names << name
    name
  end

  def reset
    @name = get_uniq_name
  end

end
