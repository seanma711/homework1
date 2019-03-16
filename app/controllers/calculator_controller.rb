class CalculatorController < ApplicationController
  def convert
    @input = params[:x].to_f
    @origin_unit = params[:a]
    @convert_unit = params[:b]
    @output
    @kelvin_difference = 273.15
    if @origin_unit === "k"
      if @convert_unit === 'f'
        @output = (@input - 273.15)*(9.0/5.0)+32.0
      elsif @convert_unit ==='c'
        @output = (@input - 273.15)
      else
        @output='Unable to convert'
      end
    elsif @origin_unit ==='c'
      if @convert_unit === 'f'
        @output = @input*(9.0/5.0)+32.0
      elsif @convert_unit === 'k'
        @output = @input + 273.15
      else
        @output='Unable to convert'
      end
    elsif @origin_unit ==='f'
      if @convert_unit === 'c'
        @output = @input*(5.0/9.0)-32.0
      elsif @convert_unit === 'k'
        @output = (@input-32.0)*(5.0/9.0)+273.15
      else
        @output='Unable to convert'
      end
    else
      @output='Invalid initial unit'
    end
    @output = @output.round(1)
  end
end
