#kreuz ausgeben 

def kreuz(n,chars)
  if n%2 == 1
    for zeilen in (0...n)
      for spalten in (0...n)
        if zeilen == n/2 || spalten == n/2
          print chars
        else
          print " " * chars.size
        end
      end
      puts
    end
  else puts "#{n} muss ungerade oder positiv sein"
  end
end

#dreieck1 ausgeben
def dreieck1(n,chars)
  if n%2 == 1 
    for zeilen in (1..n)
      puts chars * zeilen
    end
    puts
  else puts "#{n} muss ungerade oder positiv sein"
  end
end

#dreieck2 ausgeben
def dreieck2(n,chars)
  if n%2 == 1 
    for zeilen in (0...n)
        puts (" " * chars.size) * zeilen + chars * (n - zeilen)
    end
    puts
  else puts "#{n} muss ungerade oder positiv sein"
  end
end

#dreieck3 ausgeben
def dreieck3(n,chars)
  lz = " " * chars.size
  i = 0
  if n%2 == 1 
    puts lz * (n/2) + chars + lz * (n/2)
    for zeilen in (1...n/2)
      puts lz * (n/2 - zeilen) + chars + lz * (zeilen + i) + chars + lz * (n/2 - zeilen) 
      i += 1
    end
    puts chars * n
  end
end

dreieck1(3,"o")
dreieck2(5,'o')
dreieck3(7,"op")
