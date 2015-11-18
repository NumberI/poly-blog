class ArticlesController < ApplicationController
  def new
  
  end
  
  def create
    @article = Post.new(article_params)
    if @article.save
      redirect_to '/'
    else
      render action: "new"
    end
  end
  
  private
  
  def article_params
    params.require(:article).permit(:content)
  end
end
