class SquareResultsController < ApplicationController 
  def get_square
    @number = params.fetch("number").to_f
    @square = @number**2

    render({ template: "/pages/square_results"})
  end
end
