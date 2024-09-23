class RandomResultsController < ApplicationController
  def get_random
    @min = params.fetch("user_min").to_f
    @max = params.fetch("user_max").to_f
    @random_number = rand(@min..@max)

    render({ template: "pages/random_results"})
  end
end
