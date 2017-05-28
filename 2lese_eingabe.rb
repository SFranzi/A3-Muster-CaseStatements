require "1muster"

def zeilen_spalten_anzahl()
  print "Geben Sie eine ungerade ganze Zahl fuer Zeilen und Spalten des Musters ein"
  anzahl = gets.chomp().to_i               #Problem: eine Zeichenkette.gets.chomp() gibt 0, um herauszufinden, ob anzahl eine Zeichenkette war oder 
  
  
  #ziffer = anzahl.to_i
#  if ziffer.to_s == anzahl
#    dann war es "0"
#  end
  
    if anzahl % 2 != 0
       return anzahl
    else 
        print "Nur ungerade, ganzzahlige Werte sind zulaessig"
    end
end

def muster()
  print "Geben Sie ein Muster ein."
  muster = gets.chomp()
  return muster
end

def benutzer_eingabe()
  puts '''Willkommen in der Musterfabrik
  Geben Sie eine Zahl ein um ein Muster auszuwaehlen oder "exit" um das Programm zu beenden
  1:Kreuz
  2:Dreieck links 
  3:Dreieck rechts
  4:gleichschenkliges Dreieck'''
  muster_auswahl = gets.chomp()                   #gets.chomp() gibt einen string. 
  case muster_auswahl
     when "1"
       n = zeilen_spalten_anzahl()
       chars = muster()
       kreuz(n, chars)
     when "2"
       n = zeilen_spalten_anzahl()
       chars = muster()
       dreieck1(n, chars)
     when "3"
       n = zeilen_spalten_anzahl()
       chars = muster()
       dreieck2(n, chars)
     when "4"
       chars = muster()
       n = zeilen_spalten_anzahl()
       dreieck3(n, chars)
     when "exit"                                                      
       return "Tschuess. Die Druckerei geht in die Osterferien"       
     else
        print "Ungueltige Eingabe
        Geben Sie ein Zahl ein um ein Muster auszuwaehlen oder 'exit' um das Programm zu beenden"
    end  
end 


benutzer_eingabe()
