class RandomFormController < ApplicationController
  def random_form
    render({ :template => "/pages/random_form"})
  end
end
