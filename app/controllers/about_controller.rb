class AboutController < ApplicationController

	def index
		@sponsors = Sponsors.all
		@num = Sponsors.count
	end
end
