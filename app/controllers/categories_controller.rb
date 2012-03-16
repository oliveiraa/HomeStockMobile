class CategoriesController < ActionController::Base
	
	def index
		@title = "Hello World"
	end

	def new
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
  		@category = Category.find(params[:id])

  		respond_to do |format|
  			format.html
  		end
  	end
end