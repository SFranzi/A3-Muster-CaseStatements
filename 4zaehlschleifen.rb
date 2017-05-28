def ln(x,n)
  if x.is_a?(Float) && x > 0.5
    sum_ergebnis = 0
    for i in (1..n)
      p zaehler = ((x-1)**i)
      p nenner = (i*((x)**i))
      p zaehler/nenner
      p sum_ergebnis = sum_ergebnis + zaehler/nenner
    end
    sum_ergebnis
  else puts "#{x} ist ungültig"
  end
end

puts Math.log(12)
puts
ln(12,20)
puts
ln(12,3)
puts
ln(0.4, 10)

def fak(n)
  
  sum_ergebnis = 1
  if n > 1

    1.upto(n) {|i|
      sum_ergebnis = sum_ergebnis * i
    }

  end
  sum_ergebnis
end

puts
fak(3)
puts
fak(4)
puts
fak(0)
puts
fak(1)
puts
puts 5**3

def f(a,x,n)
  sum_ergebnis = 0
  zwischen_sum = 0
  for i in (0...n)
    zaehler = (Math.log(a)) ** i # ln(a, n)
    nenner = fak(i)
    zwischen_sum = ((zaehler/nenner) * x**i)
    sum_ergebnis = sum_ergebnis + zwischen_sum
  end
  puts "Endergebnis: #{sum_ergebnis}"
end

#puts
#f(1,1,1) # 1
#puts
#f(5,5,1)
#puts
#puts 5**5


puts self.class
