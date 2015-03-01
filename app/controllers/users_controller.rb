class UsersController < ApplicationController
  respond_to :html, :xml, :json
  def index
    @users = User.all.map {|u| u.name}
    respond_with @users
  end
end
