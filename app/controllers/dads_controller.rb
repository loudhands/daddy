class DadsController < ApplicationController
  def new
    @dad = Dad.new(params[:dad])
  end
  
  def create
    @dad = Dad.new(params[:dad])
    if @dad.save
      redirect_to root_path
      flash[:notice] = "Thanks for adding your dad!"
    else
      render :action => 'new'
    end
  end

  def index
  end

  def show
    @dad = Dad.find(params[:id])
  end

end
