def collect_multiples(num)
  num -= 1
  if num % 5 == 0 && num != 0
    collect_multiples(num) << num
  elsif num % 3 == 0 && num != 0
    collect_multiples(num) << num
  elsif num > 0
    collect_multiples(num)
  else
    []
  end
end

def sum_multiples(num)
  multiples = collect_multiples(num)
  multiples.inject(0){|sum, m| sum + m}
end