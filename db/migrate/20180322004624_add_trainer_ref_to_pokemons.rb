class AddTrainerRefToPokemons < ActiveRecord::Migration[5.1]
  def change
  	add_index :pokemons, :trainer_id
  end
end
