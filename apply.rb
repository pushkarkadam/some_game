require "json"
require_relative "game"
require_relative "monster"
require_relative "object_to_hash"
require_relative "beamusup"
require_relative "energize"

gamesphere = Game.new
	gamesphere.game = "call_of_duty"
	gamesphere.title = "Advanced_Warfare"
		lil_monster = Monster.new
			lil_monster.health = 100
			lil_monster.xp = 100
	gamesphere.Monster = ConvertToHash.object_to_hash(lil_monster)
gamesphere = ConvertToHash.object_to_hash(gamesphere)


startrek = Game.new
	startrek.game = "Strategy"
	startrek.title = "Memoirs of Spock"
		bigMonster = Monster.new
			bigMonster.health = 1000
			bigMonster.xp = 100
	startrek.Monster = BeamUsUp.teleporter(bigMonster) # star trek sucks
	startrek = BeamUsUp.teleporter(startrek)
BeamUsUp.teleporter(startrek)


enterprise = Starship::Energize.new("1","Spock","Science Officer")
puts enterprise
enterprise = ConvertToHash.object_to_hash(enterprise)
enterprise.to_json

gamesphere
gamesphere.to_json
