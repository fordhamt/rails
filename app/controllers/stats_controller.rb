class StatsController < ApplicationController

def show 
    @player = Player.find(params[:player_id])
    @stats = @player.stats.paginate(page: params[:page])
    @feed_items = @player.feed.paginate(page: params[:page])       
end

def new
  @player = Player.find(params[:player_id])
  @stat = @player.stats.build
end

def create
    @player = Player.find(params[:player_id])
    @stat = @player.stats.build(stat_params)
    if @stat.save
      flash[:success] = "Stats created!"
      redirect_to @player
    else
      @feed_items = []
      render 'new'
    end
end

def edit
    @player = Player.find(params[:player_id])
    @stat = @player.stats.find(params[:id])
end

def destroy
    @stat = Stat.find(params[:id])
    @stat.destroy
    flash[:success] = "Stats destroyed"
    redirect_to players_url
end

  private

    def stat_params
        params.require(:stat).permit(:level, :guild, :kills,
                                   :battlegroup, :points)
    end
end
