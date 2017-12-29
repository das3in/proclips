class MatchesController < ApplicationController
  def show
    @match = Match.find(params[:id])
  end

  def new
    @match = Match.new
    @teams = Team.all
    @tournaments = Tournament.all
  end

  def create
    @match = Match.new(match_params)

    if @match.save
      redirect_to @match
    end
  end

  private

  def match_params
    params.require(:match).permit(
      :blue_team_id,
      :red_team_id,
      :winner_id,
      :tournament_id,
      :youtube_url,
    )
  end
end
