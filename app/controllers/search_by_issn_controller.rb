class SearchByIssnController < ApplicationController
	def index
		#@data_library = DataLibrary.all
	end
	def show
		
	end
	def new
		@data_library = DataLibrary.new
	end
	def create
  	end
  	def search
  		byebug
  	end
  	def load_suggestions
  		byebug
  		@suggestions = DataLibrary.select(:issn).where()#Select the data you want to load on the typeahead.
  		#MyModel.find(:all, conditions: [...]) #Select the data you want to load on the typeahead.
  		render json: @suggestions
  	end
end
