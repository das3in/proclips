class TeamfightsController < ApplicationController

  def new
    @match = Match.find(params[:match_id])
  end

  def create
    @match = Match.find(params[:match_id])
    @teamfight = @match.teamfights.create(teamfight_params)
    redirect_to @match
  end

  private

  def teamfight_params
    params.require(:teamfight).permit(
      :match_id,
      :start_time_game,
      :end_time_game,
      :start_time_youtube,
      :end_time_youtube,
    )
  end
end
