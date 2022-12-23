class StocksController < ApplicationController
  def search
    @stock = Stock.find_by(ticker: params[:stock])
    if @stock == nil
      flash[:alert] = "Could not find any product with that ticker"
    end
  end
end