# your code goes here
class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene
    
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8

    end

    def happy?

        if @happiness > 7
                true
            else
                false
            end
        
                

    end

    def clean?
        if @hygiene > 7
            true
        else
            false
        end
    end

    def get_paid(salary)
        @bank_account = @bank_account + salary
        "all about the benjamins"
    end

    def take_bath
        
            self.hygiene+=4
            return "♪ Rub-a-dub just relaxing in the tub ♫"
        
         
    end

    def hygiene=(num)
        @hygiene = num
        @hygiene = 0 if num < 0 
        @hygiene = 10 if num > 10

    end

    def work_out
        self.happiness += 2
        self.hygiene = self.hygiene - 3
        "♪ another one bites the dust ♫"
    end

    def happiness=(num)
        @happiness = num
        @happiness = 0 if num < 0 
        @happiness = 10 if num > 10
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            
            self.happiness = self.happiness - 2
            person.happiness = person.happiness - 2
            "blah blah partisan blah lobbyist"

        elsif topic == "weather"
            self.happiness = self.happiness + 1
            person.happiness = person.happiness + 1
            "blah blah sun blah rain"

        else
            "blah blah blah blah blah"
        end
    end

    


end

chris = Person.new("chris")
