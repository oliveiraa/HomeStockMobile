class CategoriesController < ApplicationController
	
	def index
		@title = "Categorias"

		@categories = Category.all

		respond_to do |format|
			format.html
			format.json { render json: @categories }
		end
	end

	def new
	    @title = "Nova categoria"
	    @category = Category.new

	    respond_to do |format|
	      	format.html # new.html.erb
	      	format.json { render json: @category }
	    end
	end

	def create
    	@category = Category.new(params[:category])

    	respond_to do |format|
	      	if @category.save
	        	format.html { redirect_to @category, notice: 'Categoria criada com sucesso' }
	        	format.json { render json: @category, status: :created, location: @category }
	      	else
	        	format.html { render action: "new" }
	        	format.json { render json: @category.errors, status: :unprocessable_entity }
	      	end
		end
  	end

  	def show
  		@title = "Categoria"
  		
  		@category = Category.find(params[:id])

  		respond_to do |format|
  			format.html
  			format.json { render json: @category }
  		end
  	end
end