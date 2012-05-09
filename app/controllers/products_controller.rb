class ProductsController < ApplicationController

	def new
		@title = "Criar novo produto"
		@product = Product.new
		@producttypes = ProductType.all
	end

	def index
		@title = "Produtos"
		@products = Product.all
	end

	def create
		@product = Product.new(params[:product])

		if @product.save
			redirect_to @product, notice: "Produto criado com sucesso"
		else
			render action: "new"
		end

	end

	def show
		@title = "Produto"
		@product = Product.find(params[:id])
	end

end
