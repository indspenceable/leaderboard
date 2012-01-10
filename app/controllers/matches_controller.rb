class MatchesController < ApplicationController
  before_filter :require_login!, except: [:index, :show]
  
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
  
  def destroy
    match = Match.find(params[:id])
    if match.destroy
      redirect_to matches_path, flash: {notice: "Match Deleted"}
    else
      redirect_to matches_path, flash: {error: "Unable to find match to delete."}
    end
  end
end
