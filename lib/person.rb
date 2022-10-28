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
        # condition to sets the value of the person's happiness points
        @happiness = if value > 10
            10
        elsif value < 0
            0
        else 
            value
        end   
    end

    #getting our happines method 

    def happiness
        @happiness
    end

    #setting our hygiene method 
    def hygiene=(value)
        #condition to set the value of the person hygiene points 
        @hygiene = if value > 10
            10
        elsif value < 0
            0
        else 
            value
        end
    end

    #getting our hygiene method 
    def hygiene
        @hygiene 
    end
    

  

end
#creating an instance of our class 
human = Person.new("Wanjiku")

puts human.name

#calling our instance variable  bank_account  currently setting it to a new value 
puts human.bank_account=56

#calling our instance variable happiness currently setting it to a new value 
puts human.happiness = 46

#calling our instance variable hygiene and setting it to a new value 
puts human.hygiene = 21




