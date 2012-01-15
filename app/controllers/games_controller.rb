class GamesController < ApplicationController
  def show
    @game = Game.find(params[:id])
  end
  def index
    @games = Game.active
  end
end
