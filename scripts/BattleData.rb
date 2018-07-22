
class Armor
	@ap_table = nil
	@armor_table = nil
	def initialize
		@ap_table = {
			1 => 55
		}
		@armor_table = {
			:helmet => {
				
			},
			:shield => {
				
			},
			:bodyarmor => {
				
			},
			:accessory => {
				
			}
		}
	end
	
	
	def self.instance
		@@instance ||= new
	end
	
	
	def ap_bonus(id)
		if @ap_table.key?(id)
			bonus = @ap_table[id]
			
		else
			bonus = id/5 + 3			
		end
		
		return bonus
	end
	
	def generate
		$data_armors.each do |armor|
			unless(armor.nil?)
				if(armor.name != "")
					case armor.kind
					when 0
						@armor_table[:shield].merge!(armor.id => {
								"name" => armor.name,
								"ap" => @ap_table[armor.id]
							})
					when 1
						@armor_table[:helmet].merge!(armor.id => {
								"name" => armor.name,
								"ap" => @ap_table[armor.id]
							})
					when 2
						@armor_table[:bodyarmor].merge!(armor.id => {
								"name" => armor.name,
								"ap" => @ap_table[armor.id]
							})
					when 3
						@armor_table[:accessory].merge!(armor.id => {
								"name" => armor.name,
								"ap" => @ap_table[armor.id]
							})
					end
				end
			end			
		end
	end
	
	def get_all(type)
		return @armor_table[type]
	end
	
	def get(type, id)
		return @armor_table[type][id]
	end

	def set(type, val, id)
		@armor_table[type][id]["ap"] = val
	end
	
	
	
end


module Characters
	def self.rpgmethods(obj, method, *args)
		if obj.respond_to?(method)
			obj.send(method, *args)
		end
	end
	
	def self.vit
		return
	end
	
	def self.vit=(value)
		
	end
end	

class Player
	
	@character = nil
	@ap_recovery_turn = nil
	@name = nil
	
	def initialize(name)
		@name = name
		@character = $game_party.actors.select {|char| char.name == name}[0]
		@ap_recovery_turn = 5
	end
	
	def method_missing(method, *args)
		Characters.rpgmethods(@character, method, *args)
	end
	
	def ap
		return PlayerInfo
	end
	
	# Aliases
	def shield
		armor1_id
	end
	
	def helmet
		armor2_id
	end
	
	def bodyarmor
		armor3_id
	end
	
	attr_reader :character
	attr_accessor :ap_recovery_turn
end




class Enemy
	@enemy_info = {
		"lvl" => "off",
		"hp" => "off",
		"ap" => "off",
		"vit" => "off" #might not be needed.
	}
	@enemy = nil
	
	def initialize
		@enemy = game_troop.enemies[0]
	end
	
	def method_missing(method, *args)
			Characters.rpgmethods(@enemy, method, *args)
	end
	
	
	
end

class PlayerInfo
	@last_bodyarmor = nil
	@ap = nil
	
	def initialize(yuuki)
		@yuuki = yuuki
	end
	
	def self.check_bodyarmor(player)
		p @last_bodyarmor, player.bodyarmor
		if @last_bodyarmor != player.bodyarmor
			@ap = Armor.instance.get(:bodyarmor, player.bodyarmor)
			@last_bodyarmor = player.bodyarmor
		end
	end
	
	
	attr_reader :ap
end

module Skills
	
	# This class is for the different AP point allocations you do in the game.
	class Points
		@ap = {}
		
		def initialize()
			@ap = {
				"STR" => 0,
				"DEX" => 0,
				"AGI" => 0,
				"INT" => 0
			}			
		end
		
		def increment(stat, num)
			@ap[stat] += num
		end
		
		def decrease(stat, num)
			@ap[stat] -= num
		end
		
		def ap(stat)
			return @ap[stat]
		end
		
		def ap=(stat, num)
			@ap[stat] = num
		end
		
	end
	
	# This class is for the different commands in-game
	class Commands
		attr_reader :switch
		attr_accessor :used, :id, :cooldown
		def initialize()
			@used = false
			@id = nil
			@cooldown = 0
			
		end
		
		def switch=(value)
			@switch = $game_switches[value]
		end
		
	end
	
end

