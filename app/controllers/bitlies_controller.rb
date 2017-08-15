class BitliesController < ApplicationController
  def index
  	@bitlies = Bilty.all
  end

  def new
	end

	def create
		# evaluando abuelita
		p 'Hola'
		p @bitly = params[:long_url]
		p @short_url = Bilty.short_url
		p @new_url = Bilty.create(long_url: @bitly, short_url: @short_url)
		# render 'index'
  end

  def counter
  	p url_finder = params[:format]
	  find = Bilty.find_by(short_url: url_finder)
	  p find
	  find.click_count += 1
	  find.save
	  redirect_to find.long_url
  end
end
