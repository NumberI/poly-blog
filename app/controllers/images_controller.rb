class ImagesController < ApplicationController
  def new
  
  end
  
  def create
    @image = Image.new(image_params)
    
    if @image.save
      redirect_to '/'
    else
      render action: "new"
    end
  end
  
  private
  
  def image_params
    params.require(:image).permit(:url)
  end
end
