class SessionsController < ApplicationController


def login

	
end


	def destroy
	
		session[:user_id] = nil
    	redirect_to index_url

	end

	def create

		user = User.find_by_email(params[:email])
	    if user
	      session[:user_id] = user.id
	      redirect_to index_url
	    else
	      # redirect_to root_url, :notice => "Nice try!"
	      render 'login'
	    end
	 

	
	end


end
