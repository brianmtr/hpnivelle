class UsersController < ApplicationController
    def index
        @users = User.all
      end

    def role
        @user = User.find(params[:id])
        @user.role = 'admin'
        @user.save
        redirect_to '/users/index', notice: "l'évenement a bien été accepté."
    end
end
