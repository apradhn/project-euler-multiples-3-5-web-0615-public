# Enter your object-oriented solution here!
class Multiples
  attr_accessor :num

  def initialize(num)
    @num = num
  end

  def collect_multiples
    self.num -= 1      
    (num % 5 == 0 || num % 3 == 0) ? (num == 0 ? [] : Multiples.new(num).collect_multiples << num) : Multiples.new(num).collect_multiples
  end

  def sum_multiples
    collect_multiples.inject(0){|sum, m| sum + m}
  end
end