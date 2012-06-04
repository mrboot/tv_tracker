module TvShowsHelper
  
  def channel_list
    @channels = Channel.find(:all, :order => :name)
  end

  def last_on_text(tv_show)
    if tv_show.last_on.nil? 
      "Showing now"
    else  
      tv_show.last_on.strftime("%b %Y")
    end
  end

end
