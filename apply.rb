require "json"
require_relative "game"
require_relative "monster"

gamesphere = Game.new
	gamesphere.game = "call_of_duty"
	gamesphere.title = "Advanced_Warfare"
lil_monster = Monster.new
	lil_monster.health = "100"
	lil_monster.xp = "100"
	monster_hash = Hash.new
	lil_monster.instance_variables.each {|x| monster_hash[x[1..-1]] = lil_monster.instance_variable_get(x)}
gamesphere.Monster = monster_hash

gamesphere.instance_variables
properties = Hash.new
gamesphere.instance_variables.each {|x| properties[x[1..-1]] = gamesphere.instance_variable_get(x)}

properties

properties.to_json
