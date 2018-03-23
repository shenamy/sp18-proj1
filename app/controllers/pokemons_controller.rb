class PokemonsController < ApplicationController
	def new
		@pokemon = Pokemon.new()
	end
	def capture
		poke = Pokemon.find(params[:id])
		poke.trainer_id = current_trainer.id
		poke.save
		redirect_to '/'
	end
	def damage
		poke = Pokemon.find(params[:id])
		poke.health = poke.health - 10
		poke.save
		trainer = poke.trainer_id
		if poke.health <= 0
			poke.destroy
		end
		redirect_to '/trainers/' + trainer.to_s
	end
	def create
		poke = Pokemon.create(name: params["pokemon"]["name"], ndex: params["pokemon"]["ndex"])
		if poke.valid?
			poke.update(level: 1, trainer_id: current_trainer.id, health: 100)
			redirect_to '/trainers/' + current_trainer.id.to_s
		else
			redirect_to '/pokemons/new'
			flash[:error] = poke.errors.full_messages.to_sentence
		end
	end
end
