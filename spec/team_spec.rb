require 'rspec'
require './lib/player'
require './lib/team'

RSpec.describe Team do
    it 'exists' do
        team = Team.new("Dodgers", "Los Angeles")

        expect(team).to be_a Team
    end

    it 'has a team name and city' do
        team = Team.new("Dodgers", "Los Angeles")

        expect(team.name).to eq("Dodgers")
        expect(team.city).to eq("Los Angeles")
    end

    it 'has a roster that starts empty' do
        team = Team.new("Dodgers", "Los Angeles")

        expect(team.roster).to eq([])
    end

    it 'counts number of players' do
        team = Team.new("Dodgers", "Los Angeles")

        expect(team.player_count).to eq(0)
    end

    it 'counts new players' do
        team = Team.new("Dodgers", "Los Angeles")
        player_1 = Player.new("Michael Palledorous" , 1000000, 36)
        player_2 = Player.new("Kenny DeNunez", 500000, 24)

        team.add_player(player_1)
        team.add_player(player_2)

        expect(team.player_count).to eq(2)
    end

    it 'adds new players to the roster' do
        team = Team.new("Dodgers", "Los Angeles")
        player_1 = Player.new("Michael Palledorous" , 1000000, 36)
        player_2 = Player.new("Kenny DeNunez", 500000, 24)

        team.add_player(player_1)
        team.add_player(player_2)

        expect(team.roster).to eq([player_1, player_2])
    end

    it 'shows long term players' do
        team = Team.new("Dodgers", "Los Angeles")
        player_1 = Player.new("Michael Palledorous" , 1000000, 36)
        player_2 = Player.new("Kenny DeNunez", 500000, 24)
        player_3 = Player.new("Alan McClennan", 750000, 48)
        player_4 = Player.new("Hamilton Porter", 100000, 12)

        team.add_player(player_1)
        team.add_player(player_2)
        team.add_player(player_3)
        team.add_player(player_4)

        expect(team.long_term_players).to eq([player_1, player_3])
    end

    it 'shows short term players' do
        team = Team.new("Dodgers", "Los Angeles")
        player_1 = Player.new("Michael Palledorous" , 1000000, 36)
        player_2 = Player.new("Kenny DeNunez", 500000, 24)
        player_3 = Player.new("Alan McClennan", 750000, 48)
        player_4 = Player.new("Hamilton Porter", 100000, 12)

        team.add_player(player_1)
        team.add_player(player_2)
        team.add_player(player_3)
        team.add_player(player_4)

        expect(team.short_term_players).to eq([player_2, player_4])
    end

    it 'calculates total value' do
        team = Team.new("Dodgers", "Los Angeles")
        player_1 = Player.new("Michael Palledorous" , 1000000, 36)
        player_2 = Player.new("Kenny DeNunez", 500000, 24)
        player_3 = Player.new("Alan McClennan", 750000, 48)
        player_4 = Player.new("Hamilton Porter", 100000, 12)

        team.add_player(player_1)
        team.add_player(player_2)
        team.add_player(player_3)
        team.add_player(player_4)

        expect(team.total_value).to eq(85200000)
    end

    it 'can have a nickname' do
        player = Player.new("Michael Palledorous" , 1000000, 36)

        expect(player.nickname).to be_nil
    end

    it 'can set a nickname' do
        player = Player.new("Michael Palledorous" , 1000000, 36)

        player.set_nickname!("Squints")

        expect(player.nickname).to eq("Squints")
    end
end