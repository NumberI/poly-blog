class LinksController < ApplicationController
  def new
  
  end
  
  def create
    @link = Link.new(link_params)
    
    if @image.save
      redirect_to '/'
    else
      render action: "new"
    end
  end
  
  private
  
  def link_params
    params.require(:link).permit(:url)
  end
end
