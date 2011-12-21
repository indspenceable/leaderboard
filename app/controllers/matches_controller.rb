class MatchesController < ApplicationController
  def index
    @matches = Match.all
  end
  
  def show
    @match = Match.find(params[:id])
  end

  def new
    @match = Match.new
  end
  
  def create
    @match = Match.new(params[:match])
    if @match.save!
      redirect_to @match
    else
      render :action => 'new'
    end
  end
end
