def gewuerfelt?(zahl, von, bis)
  rand(von..bis) == zahl  
end

#alterantive 1
def gewinner_nummer(zahl, folge)
  teilnehmer = 1
  i = 1
  while true 
    if not gewuerfelt?(zahl, 1, 6)
      teilnehmer += 1
      i = 1
    else 
      i += 1
      if i == folge
        return teilnehmer
      end
    end
  end
end 

#alternative 2
def gewinner_nummer(zahl, folge)
  i = 1
  teilnehmer = 1
  while true
    case gewuerfelt?(zahl, 1, 6)
    when true
      i += 1
      if i == folge
        return teilnehmer
      end
    when false
      i = 1
      teilnehmer += 1
    end
  end
end

#gewuerfelt?(8,0,100)
#gewuerfelt?(8,0,100)
#gewuerfelt?(8,0,100)
#gewuerfelt?(8,0,100)
#gewuerfelt?(8,0,100)
#gewuerfelt?(8,0,100)
#gewuerfelt?(8,0,100)
#gewuerfelt?(8,0,100)
#gewuerfelt?(8,0,100)
#gewuerfelt?(8,0,100)

puts gewinner_nummer(6,3)
puts gewinner_nummer(6,5)
puts gewinner_nummer(6,10)
