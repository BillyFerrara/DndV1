class PlayersController < ApplicationController

    def index 
        @players = Player.all
    end 

    def show
        @player = Player.find(params[:id])
    end 

    def new
        @player = Player.new 
    end 

    def create
        @player = Player.create(player_params)
        if @player.valid?
            redirect_to players_path
        else 
            flash[:alert] = "Could not create Player. Please try again."
            render new_player_path
        end 
    end 


end

private

def player_params
    params.require(:player).permit(:name, :password)
end 