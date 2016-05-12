class PicturesController < InheritedResources::Base
	
	def index
		@pictures = Picture.paginate(:page => params[:page], :per_page => 8)
	end

	def list
		@pictures = Picture.all
	end

  private
    def picture_params
      params.require(:picture).permit(:title, :description, :image)
    end
end

