class PlayersController < ApplicationController
  before_action :set_player, only: %i[ show edit update destroy ]

  def index
    @players = Player.all
  end

  def show
  end

  def edit
  end

  def update
    @player.update(player_params)
    redirect_to player_path(@player), notice: 'Player was successfully updated.'
  end

  def new
    @player = Player.new
  end

  def create
    @player = Player.new(player_params)
    # the user, who creates the player is the owner of that player:
    @player.team.user = current_user
    if @player.save
      redirect_to player_path(@player), notice: 'Player was successfully added.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @player.destroy
    redirect_to players_path, status: :see_other, notice: 'Player was successfully deleted.'
  end

  private

  def set_player
    @player = Player.find(params[:id])
  end

  def player_params
    params.require(:player).permit(:name, :nationality, :gender, :description,
                                  :position, :handedness, :available, :birthdate)
  end
end
