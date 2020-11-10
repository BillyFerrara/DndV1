class SessionsController < ApplicationController
    def new
    end 

    def create
        @player = Player.find_by(name: params[:name])
        if @player && @player.authenticate(params[:name])
            session[:player_id] = @player.id
            redirect_to @player
        else 
            redirect_to login_path
        end 
    end 

    def destroy
        session.delete(:player_id)
        redirect_to homepage_path
    end 


end
