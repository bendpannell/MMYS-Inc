class SponsorsController < ApplicationController

	def index
		@sponsors = Sponsors.all
	end

  def new
		@sponsor = Sponsors.new
  end
	
	def create
		@sponsor = Sponsors.new(params[:sponsor_params])
		if @sponsor.save
			redirect_to '/sponsors'
		else
			render 'new'
		end
	end
	
		private
		
		def sponsors_params
			params.require(:name).permit(:website, :image)
		end
		
end
