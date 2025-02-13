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
        # @roster.select {|player| player.contract_length > 24}

        #Different way to write this
        # found_players = [] #here to grab the player.contract_length > 24
        # @roster.each do |player|
        #     if player.contract_length > 24
        #         found_players << player
        #     end
        # end
        # found_players

        #another way probably best for this use case
        @roster.find_all do |player|
            player.contract_length > 24
        end
    end

    def short_term_players #selecting the players with contract_length less than or equal to 24
    #    @roster.select {|player| player.contract_length}
        @roster.find_all do |player|
            player.contract_length <= 24
        end
    end

    def total_value #taking the total_cost of each player in the array and summing for total_value
        # @roster.sum {|player| player.total_cost}

        #another way to write
        @roster.sum do |player|
            player.total_cost
        end

        # #another way to write
        # total = 0
        # @roster.each do |player|
        #     total += player.total_cost
        # end
        # total
    end

    def details
        {
        "total value" => total_value,
        "player count" => player_count
        }
    end

    def average_cost_of_player #stumped on adding the commas
       (total_value / player_count).to_s
    end

    def players_by_last_name #Didn't finish here
        @roster.sort_by {|player| player.last_name}
    end

end