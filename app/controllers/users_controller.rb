class UsersController < ApplicationController
     def show
          @user = current_user
          
     end
     
     def create
          user = user.new(user_params)
          user.save
          redirect_to ''

     end     
     def edit
          @user = User.find(params[:id])
        
     end
     
     def index
          @user = current_user
          @users = User.all
          
     end
     
     
     
     
          

     
     private
  
     def user_params
        params.require(:user).permit(:name, :introduction)
     end
end



