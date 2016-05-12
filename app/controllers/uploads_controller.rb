class UploadsController < InheritedResources::Base

  private

    def upload_params
      params.require(:upload).permit(:filename, :file)
    end
end

