class GamesController < ApplicationController
  before_action :set_game, only:[:show,:update]
  # Add your GamesController code here
  def index

  end

  def show
    render json: @game, status:201
  end

  def update
    @game.update_params(game_params)
    render json: @game, status:201
  end

  def create
    @game = Game.new(game_params)
    @game.save
    render json: @game,status:201
  end

  private

  def set_game
    @game = Game.find(params[:id])
  end

  def game_params
    params.require(:game).permit(:state)
  end
end
