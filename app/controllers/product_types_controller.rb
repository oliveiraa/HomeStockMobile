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
			render action: "new"
		end
	end

end
