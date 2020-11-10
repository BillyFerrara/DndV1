class CharactersController < ApplicationController

    def index
        @character = Character.all
    end 

    def new 
        @character = Character.new 
    end 

    def create 
        @character = Character.create(char_params)
        if @character.valid?
            redirect_to character_path
        else
            render new_character_path
        end 
    end 

    private 
    def char_params
        params.require(:character).permit(:name, :race, :klass)
    end 
end
