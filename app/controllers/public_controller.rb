class PublicController < ApplicationController
  def home
    @dads = Dad.paginate(:all, :page => params[:page], :per_page => 25, :order=> 'created_at DESC')
  end

end
