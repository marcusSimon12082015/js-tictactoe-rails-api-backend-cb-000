class GamesController < ApplicationController
  before_action :set_game, only:[:show,:update]
  # Add your GamesController code here
  def index

  end

  def show
    render json: @game, status:201
  end

  def update
    render json: @game, status:201
  end

  def create
    @game = Game.new(game_params)
    if @game.save

    end
  end

  private

  def set_game
    @game = Game.find(params[:id])
  end

  def game_params
    params.require(:game).permit(:state)
  end
end
