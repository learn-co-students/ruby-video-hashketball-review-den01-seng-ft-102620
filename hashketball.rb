# Write your code below game_hash
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



# point = "Jeff Adrien"
# key = :home
# value = all shit
# key1 = :team_name
# value1 = "Brooklyn Nets"
def num_points_scored(point)
  game_hash.each do |key, value|
   value[:players].each do |key1|
    if key1[:player_name] == point
      return key1[:points]
     end
    end
  end
end

# ssize = Jeff Adrien
def shoe_size(ssize)
 game_hash.each do |key, value|
   value[:players].each do |key1|
     if key1[:player_name] == ssize
       return key1[:shoe]
     end
   end
 end
end

# color = "Brooklyn Nets"
def team_colors(color)
 if color == "Brooklyn Nets"
   return game_hash[:home][:colors]
 else return game_hash[:away][:colors]
 end
end

def team_names
  game_hash.map do |key, value|
    value[:team_name]
  end
end


# num = "Brooklyn Nets"
def player_numbers(num)
 array = []
  game_hash.each do |key, value|
    if value[:team_name] == num
      value.each do |key1, value1|
        if key1 == :players
          value1.each do |key3|
            array << key3[:number]
      end
    end
  end
    end
  end
  array
end

# stats = "Jeff Adrien"
# def player_stats(stats)
# hash = {}


#   hash
# end

def player_stats(input)
  game_hash.each do |team, team_info|
    team_info.each do |key, value|
      if key == :players
        value.each do |player|
          if input == player[:player_name]
             
            return player
          end
        end
      end
    end
  end
end

def big_shoe_rebounds
 big_shoe = 0
 rebounds = 0
 
  game_hash.each do |key, value|
    value[:players].each do |key1|
      if key1[:shoe] > big_shoe
        big_shoe = key1[:shoe]
        rebounds = key1[:rebounds]

end
end
  end
  rebounds
end





