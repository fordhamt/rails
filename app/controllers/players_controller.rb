class PlayersController < ApplicationController

  def show
    @player = Player.find(params[:id])
    @stats = @player.stats.paginate(page: params[:page])
  end

  def index
    @players = Player.paginate(page: params[:page])
  end

  def new
    @player = Player.new
  end

  def create
    @player = Player.new(player_params)
    if @player.save
      flash[:success] = "Player Added"
      redirect_to @player
    else
      render 'new'
    end
  end

  def update
    @player = Player.find(params[:id])
    if @player.update_attributes(player_params)
      flash[:success] = "Player updated"
      redirect_to @player
    else
      render 'edit'
    end
  end
  
  def edit
    @player = Player.find(params[:id])
  end

  def destroy
    Player.find(params[:id]).destroy
    flash[:success] = "Player deleted"
    redirect_to players_url
  end

  private

    def player_params
      params.require(:player).permit(:rank, :rating, :playername, :server, 
		:race, :gender, :classchoice, :faction, :seasonwins, :seasonlosses)
    end

    def current_player
      Player.find(params[:id])
      rescue ActiveRecord::RecordNotFound
    end
end
