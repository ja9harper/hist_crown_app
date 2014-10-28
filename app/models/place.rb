class Place < ActiveRecord::Base
	
	def latitude
		self.latlng.split(",")[0].to_f
	end 

	def longitude
		self.latlng.split(",")[1].to_f
	end 

end
