class PostsController < ApplicationController

  # GET /posts
  # GET /posts.xml
  def index
    @posts = Post.paginate :page => params[:page], :per_page => 10, :order => "created_at DESC"

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @posts }
    end
  end

end
