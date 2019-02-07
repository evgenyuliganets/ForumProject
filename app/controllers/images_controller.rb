class ImagesController < ApplicationController
	before_action :authenticate_user!, except: [:index]
  
  def index
  	@images = Image.all
  end

  def new
  	@images = Image.new
  end 

  def create
  	@image = current_user.images.build(image_parametrs)
  	if @image.save
  		redirect_to images_path
  	end
  end
  
  def show
  end

  def edit
  end 
  
  def update
  end

  def destroy
  end 

private
  
  def image_parametrs
  	parametrs.require(:image).permit(:user_id, :title, :description, :image)
  end  
  
end
	