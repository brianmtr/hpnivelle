class UsersController < ApplicationController

    def index
        @users = User.all
      end







def role
   @user = User.find(params[:id])
    role = @user.role
    case role

  when nil
    @user.role = 'admin'
    @user.save
    redirect_to '/users/', notice: "l'évenement a bien casse couille fois deux."
  
  when 'admin' 
    @user.role = nil
    @user.save
   
    redirect_to '/users/', notice: "l'évenement a bien été casse couille."

  end
end 
end