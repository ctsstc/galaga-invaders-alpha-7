#UI

class UserInterface
    
    def initialize
        @current_score = 0
        @high_score = get_high_score
        @lives = 3
    end
    
    def add_to_score(score)
       @current_score += score
    end
    
end