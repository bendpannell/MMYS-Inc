class SponsorsController < ApplicationController

	def index
		@sponsors = Sponsors.all
	end

  def add
    @sponsor = Sponsors.new
	end
	
end
