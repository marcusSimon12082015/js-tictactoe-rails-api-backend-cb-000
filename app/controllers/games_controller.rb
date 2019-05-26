class GamesController < ApplicationController
  before_action :set_game, only:[:show,:update]
  # Add your GamesController code here
  def index

  end

  def show
    pry
    render json: @game, status:201
  end

  def update
    pry
    render json: @game, status:201
  end

  def create
    @game = Game.new(state:params[:state])
    @game.save
    render json: @game,status:201
  end

  private

  def set_game
    @game = Game.find(params[:id])
  end
end
