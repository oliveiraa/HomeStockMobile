class StockMovementsController < ApplicationController

	def index 
		@title = "Movimentacao de estoques"
		@stocks = Stock.all
		@products = Product.all
		@stockmovement = StockMovement.new
	end

	def create
		@stockmovement = StockMovement.new(params[:stock_movement])
		oldstock = StockMovement.where({product_id: @stockmovement.product_id, stock_id: @stockmovement.stock_id})
		if oldstock.empty?
			@stockmovement.save
		else
			oldstock.quantity = oldstock.quantity + @stockmovement.quantity
			oldstock.save
		end

		redirect_to action: "index"
	end

end
