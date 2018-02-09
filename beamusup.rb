require_relative "object_to_hash"

class BeamUsUp
	def self.teleporter(object)
		new_object = ConvertToHash.object_to_hash(object)
		puts new_object
	end
end