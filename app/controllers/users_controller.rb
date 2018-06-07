class UsersController < ApplicationController
	def index
	end

	def create
		@user = User.new
		@user.save
	end

	def new
		@user = User.new
	end

	def edit
	end

	def show
	end

	def update
	end

	def destroy
	end
end
