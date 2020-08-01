# your code goes here
class Person
    attr_reader :name, :happiness, :bank_account, :hygiene
    # attr_accessor :bank_account, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def bank_account=(amount)
        @bank_account = amount
    end

    def happiness=(happy_points)
        if happy_points > 10
            @happiness = 10
        elsif happy_points < 0
            @happiness = 0
        else 
            @happiness = happy_points
        end
    end

    def hygiene=(hygiene_points)
        if hygiene_points > 10
            @hygiene = 10
        elsif hygiene_points < 0
            @hygiene = 0
        else 
            @hygiene = hygiene_points
        end
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
        @bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene=(hygiene + 4)
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene=(hygiene - 3)
        self.happiness=(happiness + 2)
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness=(happiness + 3)
        friend.happiness=(friend.happiness + 3)
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic === "politics"
            self.happiness=(happiness - 2)
            person.happiness=(person.happiness - 2)
            return 'blah blah partisan blah lobbyist'
        elsif topic === "weather"
            self.happiness=(happiness + 1)
            person.happiness=(person.happiness + 1)
            return "blah blah sun blah rain"
        else 
            return "blah blah blah blah blah"
        end
    end

end