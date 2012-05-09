class ProductTypesController < ApplicationController

	def index
		@product_types = ProductType.all
	end

	def new 
		@title = "Criar Tipo de Produto"
		@product_type = ProductType.new
		@categories = Category.all
	end

	def create
		@product_type = ProductType.new(params[:product_type])

		if @product_type.save
			redirect_to @product_type, notice: "Tipo de Produto Criado com Sucesso"
		else
			@product_type = ProductType.new
			@categories = Category.all
			render action: "new"
		end
	end

	def show
		@title = "Tipo de Produto"

		@product_type = ProductType.find(params[:id])
	end

end
