class CalculatorController < ApplicationController
  def convert
    @x = params[:x]
    @a = params[:a]
    @b = params[:b]
  end
end
