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

    #defining and getting our clean method 
    def clean?
        @hygiene > 7 ? true : false 
    end

    #defining getting our happy method 
    def happy?
        @happiness > 7 ? true : false 
    end
    #defining getter method that takes an amount and adds it to the bank account 
    def get_paid(amount)
        @bank_account += amount
         "all about the benjamins"
    end

    #increments the person's hygiene points by four and returns the string 
    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    #increments the person's happiness by two points, decreases their hygiene by three points, and returns the Queen lyrics, "♪ another one bites the dust ♫
    def work_out 
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    #accepting another instance of the person class or "friend"
    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
    def start_conversation(friend, topic)
        if topic == "politics"
         [self, friend].each {|person| person.happiness -= 2}
         'blah blah partisan blah lobbyist'
        elsif topic == "weather"
         [self, friend].each {|person| person.happiness += 1}
         'blah blah sun blah rain' 
        else
         'blah blah blah blah blah' 
        end
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
puts human.hygiene = 1

#calling out our clean  method instance 
puts human.clean?

#calling out our happy method instance 
puts human.happy?

#calling out our get_paid method instance 
puts human.get_paid(2000)

#calling out our take_bath method instance 
puts human.take_bath

#calling out our non-attribute work_out method
puts human.work_out
#calling out our instance of the person class friend 
# puts human.call_friend(friend)




