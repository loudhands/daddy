class DadsController < ApplicationController
  before_filter :init_dad, :except => :show
  
  def new
  end
  
  def create
    if @dad.save
      redirect_to root_path
      flash[:notice] = "Thanks for adding your dad!"
    else
      render :action => 'new'
    end
  end

  def show
    @dad = Dad.find(params[:id])
  end
  
  private
  
  def init_dad
    @dad = Dad.new(params[:dad])
  end
end
