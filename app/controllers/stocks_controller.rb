class StocksController < ApplicationController
	
	def new
		@title = "Novo Stock"
		@stock = Stock.new
	end

	def create
		@stock = Stock.new(params[:stock])

		if @stock.save
			redirect_to @stock, notice: "Stock criado com sucesso"
		else
			render action: "new"
		end
	end

	def show
		@title = "Stock"
		@stock = Stock.find(params[:id])
		@sm = StockMovement.where({ stock_id: @stock.id} )
		@stocksvm = Array.new
		@sm.each do |stock|
			vm = { produto: "", quantidade: "" }
			vm["quantidade"] = stock.quantity
			vm["produto"] = Product.find(stock.product_id).name
			@stocksvm.push(vm)
		end

	end

	def index
		@title = "Lista de Stocks"
		@stocks = Stock.all()
	end
	
end
