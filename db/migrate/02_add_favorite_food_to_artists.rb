#named 02 because AR executes file in alpha-numerical order 
class AddFavoriteFoodToArtists < ActiveRecord::Migration[4.2]
    def change #telling AR to add column to artists table called favorite food 
      add_column :artists, :favorite_food, :string #column will contain a string 
    end
  end