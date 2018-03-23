class PokemonController < ApplicationController

	def capture
		@pokemon = Pokemon.find(params[:id])
		@pokemon.trainer = current_trainer
		@pokemon.save
		redirect_to root_path
	end

	def damage
		@pokemon = Pokemon.find(params[:id])
		
		@pokemon.health -= 10
		if @pokemon.health == 0
			@pokemon.destroy
		end
		@pokemon.save
		redirect_to controller: 'trainers', action: 'show', id:current_trainer.id
	end

	def add
		@pokemon = Pokemon.new()
		
  		render "new.html.erb"
 	end

 	def create

 		@pokemon = Pokemon.new(pokemon_params)
 		if @pokemon.valid?	
	 		@pokemon.health = 100
	 		@pokemon.level = 1
	 		@pokemon.trainer = current_trainer
			@pokemon.save
			redirect_to '/trainers'
		else
			flash[:error] = @pokemon.errors.full_messages.to_sentence
			render "new.html.erb"
		end
 	end
 	private
 	def pokemon_params
 		params.require(:pokemon).permit(:ndex, :name)
 	end
end
