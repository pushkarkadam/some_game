require_relative "object_to_hash"
module Starship
	class Energize
		def initialize(id,oname,rank)
			@officer_id = id
			@officer_name = oname
			@officer_rank = rank
		end
	end

	class Engage
		def initialize(coordinates,planet)
			@co_ordinates = coordinates
			@mission_planet = planet
		end
	end
end
