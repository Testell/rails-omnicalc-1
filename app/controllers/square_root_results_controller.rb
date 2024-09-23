class SquareRootResultsController < ApplicationController
  def get_square_root
    @number = params.fetch("number").to_f
    @square_root = Math.sqrt(@number)

    render({ template: "/pages/square_root_results"})
  end
end
