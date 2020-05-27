class PlayersController < ApplicationController
  before_action :set_team
  before_action :set_player, only: [:edit, :update, :show, :destroy]

  def index 
    @players = @team.players
  end

  def show
  end
  
  def edit
  end

  def new
    @player = @team.players.new
  end

  def update
    if @player.update(player_params)
      redirect_to [@team, @player]
    else
      render :edit
    end
  end

  def destroy
    @player.destroy
    redirect_to team_players_path
  end

  def create
    @player = @team.players.new(player_params)
    if (@player.save)
      redirect_to [@team, @player]
    else
      render :new
    end
  end


  
  private
  def set_team
    @team = Team.find(params[:team_id])
  end

  def set_player
    @player = Player.find(params[:id])
  end

  def player_params
    params.require(:player).permit(:name, :age, :position, :height, :weight, :number)
  end
end
