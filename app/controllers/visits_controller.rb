class VisitsController < ApplicationController

  def index
    @visitor = Visit.new
    @visitorname = Visit.all

  end

  def new
    @visitor = Visit.new
  end


  def create
    Visit.create(visitor_params)
    
    redirect_to visits_path
  end

  private

  def visitor_params
    params.require(:visit).permit(:name)
  end

end


