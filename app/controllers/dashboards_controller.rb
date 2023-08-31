class DashboardsController < ApplicationController
  before_action :authenticate_user!
  # Allow the user to see the homepage without having to log in
  # skip_before_action :authenticate_user!, only: [:home]

  def show
    @teams = Team.where(user_id: current_user).order(:name)
    @user = User.find(current_user.id)
    @teams = current_user.teams
  end
end