class ActivityController < ApplicationController

  def index
    @act = Activity.all
    end

  def new
    @act = Activity.new
  end

  def create
    @act = Activity.new(params[:activity])
    @act.save
      redirect_to :controller => :homepage, :action => :new
  end

  def show
    @act = Activity.find(params[:id])
  end

  def edit
    @act = Activity.find(params[:id])
  end
  
  def update
    @act = Activity.find(params[:id])
    @act.update_attributes(params[:activity])
    redirect_to :controller => :homepage, :action => :new, :id => @act
  end


end
