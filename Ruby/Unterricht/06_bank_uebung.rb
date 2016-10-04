#Einrichten einer Kundenklasse.
#
#Eine Klasse customer soll eingerichtet werden.
#Beim Anlegen eines Customer-Objektes muss als notwendiger Parameter eine Kontonummer (Instanzvariable bank_account) eingegeben werden.
#Optional kann auch der Nachname des Kunden (lastname) eingegeben werden.
#
#Erstellen Sie SET und GET - Methoden für die Eigenschaften (Instanzvariablen) firstname, street, city. Z.B heisst die Set-Methode fuer street: set_street(pstreet)
#
#Eine Methode print_address soll beim Aufruf "puts obj.print_address' eine Ausgabe wie folgt erzeugen:
#Konto:................9999
#Name:.................Theo Lodgz
#Strasse:..............Hermelinweg 7
#Ort:..................22159 Hamburg
#
#Legen Sie das Objekt obj an, rufen Sie die entsprechenden Get-Methoden für die Dateneingabe auf, erzeugen Sie die Kontrollausgabe.

class Customer
	attr_accessor :firstname, :lastname, :street, :city

	def initialize(bank_account, lastname="")
		@bank_account = bank_account
		@lastname = lastname
	end
	def print_adress
		"Konto:".ljust(15,".") + @bank_account.to_s + "\n" +
		"Name:".ljust(15,".") + @firstname.to_s + " " + @lastname.to_s
	end
 end

 obj =Customer.new(1234, "Mueller")
 obj.firstname = "Fritz"
 puts obj.print_adress

