class SessionsController < ApplicationController


def login

	
end


	def create

	 user = User.find_by_email(params[:email])
    
   		 if user != nil && user.authenticate(params[:password])
   		   session[:user_id] = user.id
   		   redirect_to index_url, :notice => "Welcome back, #{user.name}!"
   		 else
   		   redirect_to login_url, :notice => "Sorry, try again."
   		 end
	end



	def destroy
	
		session[:user_id] = nil
    	redirect_to index_url

	end


end

