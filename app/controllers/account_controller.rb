class AccountController < ApplicationController

	def index
  @events = Uploadproduct.page(params[:page]).per(10)
	end
end
