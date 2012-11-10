class AccountsController < ApplicationsController

	before_filter :load_user

	def index
	 	@user.accounts
	end

	def create
	end

	def edit
	end

	def new
	end

	def update
	end


	private

	def load_user
		@user = User.find(params[:user_id])
	end

end


link_to "Accounts", accounts_path(@user)

form_for [@user, @account]

	