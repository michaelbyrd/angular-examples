class ExampleController < ApplicationController
  respond_to :html, :xml, :json
  def index
  end

  def users
    @users = User.all.map {|u| u.name}
    respond_with @users
  end
end
