class ConvertToHash
	def self.object_to_hash(object)
		bigObject = Hash.new
		object.instance_variables.each {|x| bigObject[x[1..-1]] = object.instance_variable_get(x)}
		bigObject
	end
end