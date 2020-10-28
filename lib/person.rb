# your code goes here
class Person
    attr_writer :happiness, :hygiene
    attr_reader :name, :bank_account

    def initialize (name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account.to_i
        @happiness = happiness
        @hygiene = hygiene
    end 
    
    def bank_account=(bank_account)
        @bank_account 
    end

    def happiness
        @happiness.clamp(0,10)
    end

    def hygiene
        @hygiene.clamp(0, 10)
    end

    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end

    def happy? 
        if @happiness > 7
            true
        else
            false
        end     
    end

    def clean?
        x = @hygiene
        if x > 7
            true
        else
            false
        end
    end

    def take_bath 
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        friend.happiness += 3
        self.happiness += 3

        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            friend.happiness -= 2
            self.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            friend.happiness += 1
            self.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
end
