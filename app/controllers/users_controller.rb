class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @nickname = @user.nickname
    @full_name = @user.full_name
    @email = @user.email
    @position = @user.position
    @team = @user.team
    @birth_day = @user.birth_day
  end
  
  def edit
    @user = User.find(params[:id])
  end

  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:nickname, :full_name, :email, :position_id, :team_id, :birth_day)
  end

end


