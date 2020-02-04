class HomesController < ApplicationController

  def index
    @visitor = Visit.new
  end



  def create
    Visit.create(visitor_params)
    
    redirect_to root_path
  end

  private

  def visitor_params
    params.require(:visitor).permit(:name)
  end

end
