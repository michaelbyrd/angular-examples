class UsersController < ApplicationController
  respond_to :html, :xml, :json
  def index
    @users = User.all
    respond_with @users
  end

  def create
    @user = 'blank'
    respond_to do |format|
      if User.create(name: params[:name], email: params[:email])
        format.html { redirect_to @user, notice: 'Player was successfully created.' }
        format.json { render action: 'index', status: :created }
      else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

   private def user_params
     params.require(:course).permit( :name, :email )
   end
end
