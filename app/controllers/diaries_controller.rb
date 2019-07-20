class DiariesController < ApplicationController
    def index

    end 

    def show 

    end 

    def new 
@diarie = Diarie.new 
    end 

    def create 
        @diarie = Diarie.new(diarie_params)
    end 

    def edit

    end 

    def update 

    end 

    def destroy 

    end 

    private 

    def find_diarie
    end 

    def diarie_params
params.require(:diarie).permit(:title, :content, :media ) #require the 
    end 
end
