class UserparametrsController < ApplicationController
before_action :authenticate_user!

  def new
    @userparametrs = Userparametr.new
  end
  
  def create
    @userparametr = current_user.build_userparametr(profile_parametrs)
    if @userparametr.save
      redirect_to userparametr_path(@userparametr.id)
    end
    
  end
  
  def show
  end
  
  def edit
    @userparametr = current_user.userparametr
  end
  
  def update
    @userparametr = Userparametr.find_by(user_id: current_user.id)
    if @userparametr.update(profile_parametrs)
       redirect_to userparametr_path(@userparametr.id)
    end
    
  end
  
private

  def profile_parametrs
    params.require(:userparametr).permit(:user_id, :firstname, :lastname, :age, :avatar)
  end
  
end
