class PlayersController < ApplicationController
  before_action :set_player, only: %i[ show ]

  def index
    @players = Player.all
    # if params[:query].present?
    #   @players = Player.search_player("#{params[:query]}")
    # end

    # @markers = @players.map do |player|
    #   {
    #     lat: player.latitude,
    #     lng: player.longitude,
    #     info_window_html: render_to_string(partial: "info_window", locals: { player: player })
    #   }
    # end
  end

  def show
  end

  private

  def set_player
    @player = Player.find(params[:id])
  end

  def player_params
    params.require(:player).permit(:name, :nationality, :gender, :description, :position, :handedness,
                                  :available, :birthdate)
  end
end
