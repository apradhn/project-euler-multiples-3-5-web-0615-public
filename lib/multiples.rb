def collect_multiples(num)
  # num -= 1
  # if num % 5 == 0 || num % 3 == 0
  #   num == 0 ? [] : collect_multiples(num) << num
  # else
  #   collect_multiples(num)
  # end  
  num -= 1
  (num % 5 == 0 || num % 3 == 0) ? (num == 0 ? [] : collect_multiples(num) << num) : collect_multiples(num)
end

def sum_multiples(num)
  collect_multiples(num).inject(0){|sum, m| sum + m}
end