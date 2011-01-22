class NewsitemsController < Spree::BaseController
  # GET /news
  # GET /news.xml
  def index
  	@page = if params[:p] && params[:p].to_i then params[:p].to_i else 1 end
  	@news = Newsitem.for_page(@page, 20)
  	@pages_count = Newsitem.pages_count(20)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @news }
    end
  end

  # GET /news/1
  # GET /news/1.xml
  def show
    @news_item = Newsitem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @news }
    end
  end
end
