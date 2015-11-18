class PostsController < ApplicationController
  def index
    @images = Image.all
    @links = Link.all
    @articles = Post.all
    @posts = (@images + @links + @articles).sort_by {|x| x.created_at}
  end
end
