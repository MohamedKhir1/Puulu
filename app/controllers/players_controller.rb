class PlayersController < ApplicationController
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

end
