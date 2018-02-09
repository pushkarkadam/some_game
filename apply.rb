require "json"
require_relative "game"
require_relative "monster"
require_relative "object_to_hash"

gamesphere = Game.new
	gamesphere.game = "call_of_duty"
	gamesphere.title = "Advanced_Warfare"
		lil_monster = Monster.new
			lil_monster.health = 100
			lil_monster.xp = 100
	gamesphere.Monster = ConvertToHash.object_to_hash(lil_monster)
gamesphere = ConvertToHash.object_to_hash(gamesphere)

gamesphere
gamesphere.to_json
