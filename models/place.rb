class Place < Sequel::Model
	one_to_many(:stories)
end