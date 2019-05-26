class GamesController < ApplicationController
  before_action :set_game, only:[:show,:update]
  # Add your GamesController code here
  def index

  end

  def show
    render json: @game, status:201
  end

  def update

  end

  def create

  end

  private

  def set_game
    @game = Game.find(params[:id])
  end
end
