# your code goes here
class Person
    #using macros to define our instance variable 
    attr_reader :name, :bank_account

    def initialize(name)
        @name = name
        @bank_account = 25
        
    end

  

end
#creating an instance of our class 
human = Person.new("Wanjiku")

puts human.name

puts human.bank_account




