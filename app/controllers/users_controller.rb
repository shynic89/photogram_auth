class UsersController < ApplicationController
# skip_before_action :authenticate_user!, :only => [:index]
def index
@user = User.all
end

def show
@id = params[:id]
@user = User.find(@id)
    @photos = current_user.photos
end
    
end
