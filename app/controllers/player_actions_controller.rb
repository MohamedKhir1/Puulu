class PlayerActionsController < ApplicationController
  def create
    @game = Game.find(params[:game_id])
    @player_action = PlayerAction.new(player_action_params)
    @team = @game.team
    @players = @team.players
    @player = @players.find(params[:player_id])

    @opponent_team = @game.opponent_team
    @opponents = @opponent_team.players

    @player_action.game = @game

    @player_action.save!
  end

  private

  def player_action_params
    params.require(:player_action).permit(:kind, :position, :result, :game_id, :player_id)
  end
end
