class PublicController < ApplicationController
  def index
    @communities = Community.all.limit(5)
    @posts = Post.where("created_at >= ?", 1.day.ago).limit(30).sort_by{ |p| p.score }.reverse
    @vote = Vote.new
  end
  
  def profile
    @profile = Account.find_by_username(params[:username])
    @posts = @profile.posts.limit(30).sort_by{ |p| p.score }.reverse
  end
end
