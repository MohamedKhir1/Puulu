class GamesController < ApplicationController
  before_action :set_game, only: %i[show] # edit update destroy

  def show
    @player = Player.find(params[:id])
  end

  def new
    @game = Game.new
  end

  def create
    # Game.create!(date: Date.parse('2023-08-31'), location: "France", team: team)
    @game = Game.new(game_params)
    # redirect_to game_path
    if @game.save
      redirect_to game_path(@game), notice: 'New Game - launched'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_game
    @game = Game.find(params[:id])
  end

  def game_params
    params.require(:game).permit(:date, :team_id, :tournament, :location, :round)
  end
end
