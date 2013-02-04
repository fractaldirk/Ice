class HomeController < ApplicationController
  before_filter :authenticate_user!
  def index
    @tasks = Task.all
    @comments = Comment.find(:all, :order => 'created_at DESC', :limit => 4)
    @posts = Post.find(:all, :order => 'created_at DESC', :limit => 1)
  end
end
