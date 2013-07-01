class UsersController < ApplicationController
  def new
  	@rahul=User.new
  end
 
  def show
  	@user=User.find(params[:id])
  end

  def create
  	@rahul=User.new(params[:user])
  	if @rahul.save
      flash[:success]= "welcome to the sample app"
  		redirect_to @rahul
  	else
  		render 'new'
  	end

  end

end