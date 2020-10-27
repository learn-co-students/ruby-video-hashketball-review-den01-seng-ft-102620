require "pry"

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
  game_hash[:home][:players] + (game_hash[:away][:players])
end 

# def find_player_by_name(name)
#   players.find do |player|
#     name == player[:player_name]
#   end
# end

def find_player_by_name(name)
  players.find{ |player| name == player[:player_name]}
end

def num_points_scored(player_name)
  find_player_by_name(player_name)[:points]
end

def shoe_size(player)
  find_player_by_name(player)[:shoe]
end

def find_team_by_name(name)  
  game_hash.values.find do |team|
    team[:team_name] == name
  end
end

def team_colors(team)
  find_team_by_name(team)[:colors]
end

def team_names
  [game_hash[:home][:team_name], game_hash[:away][:team_name]]
end


def player_numbers(team_name)
  numbers = []
  find_team_by_name(team_name)[:players].each do |player|
    numbers.push(player[:number])
  end
  numbers
end 

def player_stats(player_name)
  find_player_by_name(player_name)
end 

# player_stats("Kemba Walker")

def big_shoe_rebounds
  big_shoe = 0
  rebounds = 0 
  players.each do |player|
    if player[:shoe] > big_shoe
      big_shoe = player[:shoe]
      rebounds = player[:rebounds]
    end 
  end
  rebounds 
end 



# def players
#   list = game_hash[:home][:players] + (game_hash[:away][:players])
# end 

# def num_points_scored(player_name)
#   players.each do |player|
#     player.each do |key, value|
#       if player_name == value 
#         return player[:points]
#       end
#     end
#  end
# end 

# def shoe_size(player_name)
#   players.each do |player|
#     player.each do |key, value|
#       if player_name == value 
#         return player[:shoe]
#       end
#     end 
#   end 
# end 

# def team_colors(team_name)
#   if team_name == game_hash[:home][:team_name]
#     return game_hash[:home][:colors]
#   elsif team_name == game_hash[:away][:team_name]
#     return game_hash[:away][:colors]
#   end 
# end 


# def team_names
#   [game_hash[:home][:team_name], game_hash[:away][:team_name]]
# end 

# def player_numbers(team_name)
#   numbers = []
#   game_hash.each do |team, data|
#     if data[:team_name] == team_name
#       data[:players].each do |player|
#         numbers << player[:number]
#       end
#     end 
#   end 
#   numbers 
# end 

# def player_stats(player_name)
#   players.each do |player|
#     if player[:player_name] == player_name
#       return player 
#     end 
#   end 
# end

# def big_shoe_rebounds
#   big_shoe = 0
#   rebounds = 0 
#   players.each do |player|
#     if player[:shoe] > big_shoe
#       big_shoe = player[:shoe]
#       rebounds = player[:rebounds]
#     end 
#   end
#   rebounds 
# end 



# # ============== #

# def most_points_scored
#   most_points = 0 
#   star = ""
#   players.each do |player|
#     if player[:points] > most_points 
#       star = player[:player_name]
#     end
#   end   
#   star
# end 


# def home_score
#   total = 0 
#   game_hash[:home][:players].each do |key,value|
#     binding.pry
#     if key == :points
#       total += value 
#     end 
#   end 
#   total
# end 




# def winning_team
  
# end 




























# def num_points_scored(player_name)
#   game_hash.each do |team, data|
#     data[:players].each do |player| 
#       if player[:player_name] == player_name
#         return player[:points]
#       end 
#     end
#   end 
# end   


# def shoe_size(player_name)
#   game_hash.each do |team, data|
#     data[:players].each do |player|
#       if player[:player_name] == player_name
#         return player[:shoe]
#       end
#     end
#   end
# end 

# def team_colors(team_name)
#   case team_name
#   when game_hash[:home][:team_name]
#     game_hash[:home][:colors]
#   when game_hash[:away][:team_name]
#     game_hash[:away][:colors]
#   end
# end


# def team_names
#   [game_hash[:home][:team_name], game_hash[:away][:team_name]]
# end 

# def player_numbers(team_name)
#   numbers = []
#   game_hash.each do |team, data|
#     if team_name == data[:team_name]
#       data[:players].each do |stats|
#         numbers.push(stats[:number])
#       end
#     end
#   end
#   numbers
# end 

# def player_stats(player_name)
#   statistics = {}
#   game_hash.each do |team, data|
#     data[:players].each do |stats|
#       if player_name == stats[:player_name]
#         statistics = stats
#       end
#     end
#   end
#   statistics
# end

# def big_shoe_rebounds
#   big_shoe = 0
#   big_size = 0
#   game_hash.each do |team, data|
#     data[:players].each do |stats|
#       if stats[:shoe] > big_size
#         big_size = stats[:shoe]
#         big_shoe = stats[:rebounds]
#       end
#     end
#   end
#   big_shoe
# end 
