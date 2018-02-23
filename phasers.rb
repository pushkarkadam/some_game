require "json"

def stun(voltage: 0,frequency: 0,range: "",scope: "",targets:nil)
	body = {
		:voltage => voltage,
		:frequency => frequency,
		:range => range,
		:scope => scope,
		:targets => targets
	}
	response = body.to_json

end


stun(voltage: 1,frequency: 2,scope: "universal",targets:[{:name => "Spock",:species => "vulcan"},{:name => "Kirk",:species => "human"}])