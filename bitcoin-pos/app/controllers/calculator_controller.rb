class CalculatorController < ApplicationController
  def index
  	@address = params[:address]
  	@balance = (params[:balance].to_f/(10**8)).to_f
  end
end
