
class DiariesController < ApplicationController

        before_action :find_diarie, only: [:show, :edit, :update, :destroy]

    
        def index
            @diaries = Diarie.where(user_id: current_user) #to show only diaries belongs to the current users 
        end
    
        def show
            @diarie = Diarie.find(params[:id])
        end
    
        def new
            @diarie = current_user.diaries.build 
        end
    
        def create
            @diarie = current_user.diaries.build(diarie_params)
    
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
