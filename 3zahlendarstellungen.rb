#include Comparable wg. between?() Methode

def dezimal_ziffer?(char)
  return char.between?("0","9")                               #0 und 9 als Zeichen                       
end

def oktal_ziffer?(char)
  return char.between?("0","7")     
end

def hexadezimal_ziffer?(char)
  return dezimal_ziffer?(char) || ("A".."F").include?(char) || ("x".."x").include?(char) 
end

def dezimal?(string) #Folge von Dezimalziffern, die nicht mit "0" beginnt
  if string[0] != "0"
    string.each_char {|c|
      if not dezimal_ziffer?(c)
        return false
      end
    }
    return true
  else
    return false
  end
end

def oktal?(string) #Folge von Oktalziffern, die mit "0" beginnt
  if string[0] == "0"
    string.each_char {|c|
      if not oktal_ziffer?(c)
        return false
      end
    }
    return true
  else
    return false
  end
end
  
def hexadezimal?(string)#Folge von Hexadezimalziffern, die mit "0" beginnt
  if string[0] == "0" && string[1] == "x"
    string.each_char {|c| 
      if not hexadezimal_ziffer?(c)
        return false
      end
    }
    return true
  else
    return false
  end
end

def analyse_zahlendarstellung()
  while true
    puts "Geben Sie eine Zahl in Dezimal-/ Oktal und Hexadezimalsystem ein."
    user_input = gets.chomp()
    nummer = case
    when dezimal?(user_input)
      print "#{user_input} ist eine Zahl im Dezimalsystem"
    when hexadezimal?(user_input)
      print "#{user_input} ist eine Zahl im Hexadezimalsystem"
    when oktal?(user_input)
      print "#{user_input} ist eine Zahl im Oktalsystem"
    when user_input.downcase! == "exit"                                                                         
      print "Bis zum naechsten Mal"
      return
    else
      print "#{user_input} ist keine Zahl im Dezimal-/ Oktal und Hexadezimalsystem"
    end
    puts nummer
  end
end


#puts dezimal_ziffer?("1")          #to comment all: command + 7
#puts dezimal_ziffer?("9")      
#puts dezimal?("1674920498")
#   
#puts oktal_ziffer?("0") 
#puts oktal_ziffer?("7")  
#puts oktal_ziffer?("A")
#puts oktal_ziffer?("B")
#puts oktal_ziffer?("F")      
#puts oktal?("0715356246")
#                           
#puts hexadezimal_ziffer?("0")
#puts hexadezimal_ziffer?("x")    
#puts hexadezimal_ziffer?("D")
#puts hexadezimal?("0xAD1234")
#puts hexadezimal?("0xAFFE")

analyse_zahlendarstellung()
