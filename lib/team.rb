class Team
    attr_reader :name, :city, :roster

    def initialize(name, city)
        @name = name
        @city = city
        @roster = []
    end

    def player_count #how many players on the roster
        @roster.length
    end

    def add_player(player) #adding players to the roster
        @roster << player
    end

    def long_term_players #selecting the players with contract_length greater than 24
        @roster.select {|player| player.contract_length > 24}
    end

    def short_term_players #selecting the players with contract_length less than or equal to 24
       @roster.select {|player| player.contract_length <= 24}
    end

    def total_value #taking the total_cost of each player in the array and summing for total_value
        @roster.sum {|player| player.total_cost}
    end
end