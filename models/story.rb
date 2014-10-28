class Story < Sequel::Model
	many_to_one(:places)
	many_to_one(:users)
end