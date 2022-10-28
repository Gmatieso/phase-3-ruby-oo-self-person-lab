# your code goes here
class Person
    #using macros to define our instance variable 
    attr_reader :name, :bank_account, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8 
        
    end

    #setting our bank_account 
    def bank_account=(value)
        @bank_account = value
    end

    #getting our bank_account 
    def bank_account
        @bank_account
    end

  

end
#creating an instance of our class 
human = Person.new("Wanjiku")

puts human.name

#calling our instance viable bank_account  currently initialized to 25
puts human.bank_account=56

#calling our instace variable happiness currently initialized  to 8
# puts human.happiness




