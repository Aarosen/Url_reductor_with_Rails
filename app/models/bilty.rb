class Bilty < ApplicationRecord
	def self.create_short
		link = (0..3).map { ('a'..'z').to_a[rand(26)] }.join
	end

  def self.short_url
		check = []
		receive = Bilty.all
		new_short = self.create_short
		receive.each do |generate|
			if generate.short_url == new_short
				self.short_url
			end
		end
		new_short
	end
end
