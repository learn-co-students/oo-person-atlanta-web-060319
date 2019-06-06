# your code goes here
require 'pry'
class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness
        @happiness = 0 if @happiness < 0
        @happiness = 10 if @happiness > 10
        @happiness
    end

    def hygiene
        @hygiene = 0 if @hygiene < 0
        @hygiene = 10 if @hygiene > 10
        @hygiene
    end

    def happy?
        if @happiness > 7
            return true
        else  return false
        end
    end

    def clean?
        if @hygiene > 7 
            return true
        else return false
        end
    end

    def get_paid(amount)
     @bank_account = @bank_account + amount
     return "all about the benjamins"
    end

    def take_bath
      self.hygiene += 4
      return '♪ Rub-a-dub just relaxing in the tub ♫'
    end
    def work_out
        self.hygiene -= 3
        self.happiness += 2
        return '♪ another one bites the dust ♫'
    end

    def call_friend(friend_name)
        @name
        self.happiness += 3
        (friend_name).happiness += 3
        return "Hi #{friend_name.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        people = [self, friend]
        if topic == 'politics'
            people.each do |person| 
                person.happiness -= 2
            end
            return "blah blah partisan blah lobbyist"
        elsif topic == 'weather'
            people.each do |person|
                person.happiness += 1
            end
            return "blah blah sun blah rain"
        else topic != 'politics' && 'weather'
            return "blah blah blah blah blah"
        end
    end
end







