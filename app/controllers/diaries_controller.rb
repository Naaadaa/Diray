
class DiariesController < ApplicationController

        before_action :find_diarie, only: [:show, :edit, :update, :destroy]

    
        def index
            @diaries = Diarie.all.order("created_at DESC")
        end
    
        def show
            @diarie = Diarie.find(params[:id])
        end
    
        def new
            @diarie = Diarie.new 
        end
    
        def create
            @diarie = Diarie.new(diarie_params)
    
            if @diarie.save
                redirect_to @diarie
            else
                render 'new'
            end
        end
    
        def edit
            @diarie = Diarie.find(params[:id])

        end
    
        def update
            if @diarie.update(diarie_params)
                redirect_to @diarie
            else
                render 'edit'
            end
        end
    
        def destroy
            @diarie.destroy
            redirect_to diaries_path
        end
    
        private
    
        def find_diarie
            @diarie = Diarie.find(params[:id])
        end
    
        def diarie_params
            params.require(:diarie).permit(:title, :content, :media)
        end
    end
