# your code goes here
require 'pry'

class Person
attr_accessor :hygiene, :bank_account
attr_reader :name, :happiness

def initialize(name, bank_account=25, happiness=8, hygiene=8)
  @name = name
  @bank_account = bank_account
  @happiness = happiness
  @hygiene = hygiene
end

def happiness=(num)
  @happiness = num
if num > 10
  @happiness = 10
elsif num < 0
  @happiness = 0
end
end

def hygiene=(num)
  @hygiene = num
if num > 10
  @hygiene = 10
elsif num < 0
  @hygiene = 0
end
end

def clean?
  if @hygiene > 7
    return true
  else
    false
  end
end

  def happy?
    if @happiness > 7
      return true
    else
      false
    end
  end

def get_paid(salary)
 @bank_account += salary
 return "all about the benjamins"
end

def take_bath
    @hygiene += 4
    self.hygiene = @hygiene
  return "♪ Rub-a-dub just relaxing in the tub ♫"
end

def work_out
  @happiness += 2
  @hygiene -= 3
  self.hygiene = @hygiene
  self.happiness = @happiness
  return "♪ another one bites the dust ♫"
end

def call_friend(friend)
  self.happiness += 3
  friend.happiness += 3
  if self.name == "Felix" && friend.name == "Penelope"
    return "Hi Penelope! It's Felix. How are you?"
  else
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end
end

def start_conversation(person, topic)
  if topic == "politics"
    self.happiness -= 2
    person.happiness -= 2
  return "blah blah partisan blah lobbyist"

elsif topic == "weather"
  self.happiness += 1
  person.happiness += 1
  return "blah blah sun blah rain"
else return "blah blah blah blah blah"
end
end



end
