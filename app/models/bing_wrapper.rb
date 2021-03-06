# Sets up the Bing image search api and set a method to search
class BingWrapper

	def self.search(search_input)
		# input api key and set how many images to return
		bing_image = Bing.new(ENV["BING_API_KEY"], 25, 'Image')
		search_string = search_input  
		result = bing_image.search("#{search_string}")
		parsed_result = result[0][:Image]
	end

end