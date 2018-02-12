# require_relative "apply.rb"
module Starship
	class Energize
		def initialize(id,oname,rank)
			@officer_id = id
			@officer_name = oname
			@officer_rank = rank
		end
	end
end

#class Test
	enterprise = Starship::Energize.new("1","Spock","Science Officer")
#end