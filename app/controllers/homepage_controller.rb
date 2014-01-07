class HomepageController < ApplicationController
  before_filter :authenticate_user!, :only => [:new, :edit, :create, :update, :destroy]

  def index
  @events = Uploadproduct.page(params[:page]).per(10)
  respond_to do |format|
    format.html # index.html.erb
    format.xml { render :xml => @events.to_xml }
    format.json { render :json => @events.to_json }
    format.atom { @feed_title = "My event list" } # index.atom.builder
  end
  end


  def new
  @event = Uploadproduct.new
  end


def create
  @event = Uploadproduct.new(params[:uploadproduct])
   if @event.save
    redirect_to :action => :index
  else
    render :action => :new
  end
  flash[:notice] = "event was successfully created"

end

  def show
  @event = Uploadproduct.find(params[:id])
  end



  def edit
  @event = Uploadproduct.find(params[:id])
  end

  def update
  @event = Uploadproduct.find(params[:id])
  if @event.update_attributes(params[:uploadproduct])
    redirect_to :action => :show, :id => @event
  else
    render :action => :edit
  end
  flash[:notice] = "event was successfully updated"
  end



  def destroy
  @event = Uploadproduct.find(params[:id])
  @event.destroy
  redirect_to :action => :index
  flash[:alert] = "event was successfully deleted"
  end

  def introduce
  @event = Uploadproduct.all
  end


end
