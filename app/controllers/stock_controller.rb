class StockController < ApplicationController

	def new
		@title = "Novo Stock"
		@stock = Stock.new
	end

	def create
		@stock = Stock.new(params[:stock])

		if @product.save
			redirect_to @stock, notice: "Stock criado com sucesso"
		else
			render action: "new"
		end

	end

	def show
		@title = "Stock"
		@stock = Stock.find(params[:id])
	end

	def index
		@title = "Lista de Stocks"
	end

end
