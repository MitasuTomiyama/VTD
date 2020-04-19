class UsersController < ApplicationController
  
  def index
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      # flash[:notice] =
      redirect_to user_path(@user)
    else
      @user = @user
      render action: :edit
  end

  def destroy
    @user = current_user.id
    @user.destroy
    redirect_to users_path
  end

  private
  def user_params
    params.require(:user).permit(:name, :introduction, :image_id)
end
