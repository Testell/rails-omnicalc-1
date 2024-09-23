class PaymentFormController < ApplicationController
  def payment_form
    render({ :template => "/pages/payment_form"})
  end
end
