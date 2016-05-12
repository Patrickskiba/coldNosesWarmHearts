class ContentsController < InheritedResources::Base

  before_action :authenticate_user!, :except => [:show, :index]
	
  

  private
  def deny_access
	  redirect_to(root_path)
  end
  

  def content_params
	  params.require(:content).permit(:body)
  end
end

