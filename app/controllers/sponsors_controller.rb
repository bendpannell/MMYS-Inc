class SponsorsController < ApplicationController

	def index
		@sponsors = Sponsors.all
	end

end
