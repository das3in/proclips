class TeamsController < ApplicationController
  def index
    @teams = Team.all.includes(:league)
  end

  def show
    @team = Team.find(params[:id])
  end

  def new
    @team = Team.new
    @leagues = League.all.order(:tag)
  end

  def create
    @team = Team.new(team_params)

    if @team.save
      redirect_to @team
    end
  end

  private

  def team_params
    params.require(:team).permit(:name, :tag, :league_id)
  end
end
