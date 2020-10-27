require 'pry'

def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

def players
  list = game_hash[:home][:players].concat game_hash[:away][:players]
end

def find_player_by_name name
  players.find{ |player| name == player[:player_name] }
end

# def find_team_by_name team 
#   game_hash.find{ |home_or_away| team == home_or_away[:team_name] }
# end

def num_points_scored(player_name)
  find_player_by_name(player_name)[:points]
end

def shoe_size(player_name)
  find_player_by_name(player_name)[:shoe]
end

def find_team_by_name name
  game_hash.values.find do |team|
    team[:team_name] == name
  end
end

def team_colors(team)
  find_team_by_name(team)[:colors]
end 

def team_names
  names_of_teams = []
  game_hash.each do |home_or_away, info|
    names_of_teams.push(info[:team_name])
  end
  return names_of_teams
end

def player_numbers(team_n)
  jersey_numbers = []
  game_hash.each do |home_or_away, info|
    if team_n == info[:team_name]
      info[:players].each do |keys, values|
        jersey_numbers.push(keys[:number])
      end
    end
  end
  return jersey_numbers
end

def player_stats(player_n)
  game_hash.each do |home_or_away, info|
    info[:players].each do |player, values|
      if player_n == player[:player_name]
        return player
      end
    end
  end
end

def big_shoe_rebounds
  largest_shoe = 0
  game_hash.each do |home_or_away, info|
    info[:players].each do |keys, values|
      if keys[:shoe] > largest_shoe
        largest_shoe = keys[:shoe]
      end
    end
    info[:players].each do |keys, values|
      if keys[:shoe] == largest_shoe
        return keys[:rebounds]
      end
    end
  end
end

def most_points_scored
  most_points = 0
  game_hash.each do |home_or_away, info|
    info[:players].each do |keys, values|
      if keys[:points] > most_points
        most_points = keys[:points]
      end
    end
  end
  game_hash.each do |home_or_away, info|
    info[:players].each do |keys, values|
      if most_points == keys[:points]
        return keys[:player_name]
      end
    end
  end
end