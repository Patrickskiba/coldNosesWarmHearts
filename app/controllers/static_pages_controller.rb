class StaticPagesController < InheritedResources::Base
  def index
	  now = Time.now.to_date
	  @events = Event.where("start_time > ?", now).order("start_time").take(4)
	  @pictures = Picture.take(4)
	  @contact = Contact.new
  end
  def volunteer
	  @contents = Content.all
  end
  def user
	@users = User.all
  end

  private

    def static_page_params
      params.require(:static_page).permit()
    end
end

