class ApplicationController < ActionController::Base
    def favorite_text
return @favorite_exists ? "UnFavorite" : "Favorite"
    end 
    #helper method - if the favorite is exist remove the favorite if it exists 
    helper_method :favorite_text 
end
