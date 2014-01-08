class AccountController < ApplicationController

  def index
 

  @upload = Uploadproduct.includes(:user).where("users.id=?",current_user.id)
  @choose = Uploadproduct.where(:whocheck=> current_user.id, :check=>1)


  respond_to do |format|
    format.html # index.html.erb
    format.xml { render :xml => @events.to_xml }
    format.json { render :json => @events.to_json }
    format.atom { @feed_title = "My event list" } # index.atom.builder
  end
  end

  def update
  @event = Uploadproduct.find(params[:id])
  @event.update_attributes(:check=> 1 , :whocheck => current_user.id)
  redirect_to :action => :index
  end

end
