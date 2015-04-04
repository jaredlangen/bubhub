class UsersController < ApplicationController
  def create
    if not (params[:user][:first_name].present? and params[:user][:last_name].present? and
      params[:user][:b_mail].present? and params[:user][:b_number].present? and
      params[:user][:pin].present? and params[:user][:phone_number].present? and
      params[:user][:bu_card_number].present?)
        flash[:error]= "Please fill in all required fields."
        redirect_to new_user_path and return
    else
      @user = User.new
      @user.first_name = params[:user][:first_name]
      @user.last_name = params[:user][:last_name]
      @user.bu_id = params[:user][:b_number]
      @user.email = params[:user][:b_mail]
      @user.pin = params[:user][:pin]

      @user.save

      @createdUser = User.find_by(first_name: params[:user][:first_name])
      flash[:notice] = " An account for #{@createdUser.first_name} #{@createdUser.last_name} was successfully created"
      redirect_to root_page_path and return
    end


       
   
  end

  def new
    render "register"
  end

  def read
  end

  def update
  end

  def delete
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :bu_id, :pin)
  end

  def index
    render "register"
  end
end

