class AboutController < ApplicationController

	def index
		@sponsors = Sponsors.all
	end
end
