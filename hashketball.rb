# Write your code here!
require 'pry'

def game_hash
	basketball = {
		:home=> {
			:team_name=>"Brooklyn Nets",
			:colors=>["Black", "White"],
			:players=> {
				"Alan Anderson"=> {
					:number=> 0,
					:shoe=> 16,
					:points=> 22,
					:rebounds=> 12,
					:assists=> 12,
					:steals=> 3,
					:blocks=> 1,
					:slam_dunks=> 1
				},
				"Reggie Evans"=> {
					:number=> 30,
					:shoe=> 14,
					:points=> 12,
					:rebounds=> 12,
					:assists=> 12,
					:steals=> 12,
					:blocks=> 12,
					:slam_dunks=> 7
				},
				"Brook Lopez"=> {
					:number=> 11,
					:shoe=> 17,
					:points=> 17,
					:rebounds=> 19,
					:assists=> 10,
					:steals=> 3,
					:blocks=> 1,
					:slam_dunks=> 15
				},
				"Mason Plumlee"=> {
					:number=> 1,
					:shoe=> 19,
					:points=> 26,
					:rebounds=> 12,
					:assists=> 6,
					:steals=> 3,
					:blocks=> 8,
					:slam_dunks=> 5
				},
				"Jason Terry"=> {
					:number=> 31,
					:shoe=> 15,
					:points=> 19,
					:rebounds=> 2,
					:assists=> 2,
					:steals=> 4,
					:blocks=> 11,
					:slam_dunks=> 1,
				}
			}

		},
		:away=> {
			:team_name=> "Charlotte Hornets",
			:colors=> ["Turquoise", "Purple"],
			:players=> {
				"Jeff Adrien"=> {
					:number=> 4,
					:shoe=> 18,
					:points=> 10,
					:rebounds=> 1,
					:assists=> 1,
					:steals=> 2,
					:blocks=> 7,
					:slam_dunks=> 2
				},
				"Bismak Biyombo"=> {
					:number=> 0,
					:shoe=> 16,
					:points=> 12,
					:rebounds=> 4,
					:assists=> 7,
					:steals=> 7,
					:blocks=> 15,
					:slam_dunks=> 10
				},
				"DeSagna Diop"=> {
					:number=> 2,
					:shoe=> 14,
					:points=> 24,
					:rebounds=> 12,
					:assists=> 12,
					:steals=> 4,
					:blocks=> 5,
					:slam_dunks=> 5
				},
				"Ben Gordon"=> {
					:number=> 8,
					:shoe=> 15,
					:points=> 33,
					:rebounds=> 3,
					:assists=> 2,
					:steals=> 1,
					:blocks=> 1,
					:slam_dunks=> 0
				},
				"Brendan Haywood"=> {
					:number=> 33,
					:shoe=> 15,
					:points=> 6,
					:rebounds=> 12,
					:assists=> 12,
					:steals=> 22,
					:blocks=> 5,
					:slam_dunks=> 12
				}

			}
		}
	}
end

# def good_practices
#   game_hash.each do |location, team_data|
#     #are you ABSOLUTELY SURE what 'location' and 'team data' are? use binding.pry to find out!
#     binding.pry
#       team_data.each do |attribute, data|
#         #are you ABSOLUTELY SURE what 'attribute' and 'team data' are? use binding.pry to find out!
#         binding.pry
 
#         #what is 'data' at each loop through out .each block? when will the following line of code work and when will it break?
#         data.each do |data_item|
#             binding.pry
#       end
#     end
#   end
# end

# good_practices


def num_points_scored(player)
	array = []
	game_hash.each do |location, team_data|
		team_data[:players].each do |name, data|
			if name == player
				array << data[:points]
			end
		end
	end
	array[0]
end

def shoe_size(player)
	array = []
	game_hash.each do |location, team_data|
		team_data[:players].each do |name, data|
			if name == player
				array << data[:shoe]
			end
		end
	end
	array[0]
end



def team_colors(team)
  array = []
  game_hash.each do |location, team_data|
    game_hash[location].each do |name, data|
        if team == data
        	array << game_hash[location][:colors]
        end
    end
  end
  array[0]
end

def team_names
	game_hash.map do |location, team_data|
		game_hash[location][:team_name]
	end
end

def player_numbers(team)
	array = []
	game_hash.each do |location, team_data|
		if team == game_hash[location][:team_name]
			game_hash[location][:players].each do |name, data|
				array << data[:number]
			end
		end
	end
	array
end

def player_stats(player_name)
	player_info = {}
	game_hash.each do |location, team_data|
		team_data[:players].each do |name, data|
			if player_name == name
				player_info = data
			end
		end
	end
	player_info
end

def big_shoe_rebounds
	biggest_shoe = 0
	biggest_shoe_player_rebounds = 0
	game_hash.each do |location, team_data|
		team_data.each do |name, data|
			if name == :players
				data.each do |player, stat|
					stat.each do |name, value|
						if name == :shoe
							if biggest_shoe = 0
								biggest_shoe = value
								biggest_shoe_player_rebounds = game_hash[location][:players][player][:rebounds]
							elsif value > biggest_shoe
								biggest_shoe = value
								biggest_shoe_player_rebounds = game_hash[location][:players][player][:rebounds]
							end
						end
					end
				end
			end
		end
	end
	biggest_shoe_player_rebounds
end











