# your code goes here
class Person
    #using macros to define our instance variable 
    attr_reader :name, :bank_account, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25  #setting in a way instance variable cannot be assignged a new value and must not be initialzed when istance is created 
        @happiness = 8
        @hygiene = 8 
        
    end

    #setting our bank_account method 
    def bank_account=(value)
        @bank_account = value
    end

    #getting our bank_account method 
    def bank_account
        @bank_account
    end

    #setting our happiness method 
    def happiness=(value)
        @happiness = value   #setting it in such a way we can assign instance variable a new value 
    end

    #getting our happines method 

    def happiness
        @happiness
    end
    

  

end
#creating an instance of our class 
human = Person.new("Wanjiku")

puts human.name

#calling our instance viable bank_account  currently initialized to 25
puts human.bank_account=56

#calling our instace variable happiness currently initialized  to 8
puts human.happiness = 46




