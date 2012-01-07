class PlayersController < ApplicationController
  def index
    @players = Player.all
  end
  
  def show
    @player = Player.from_param(params[:id])
  end
end
