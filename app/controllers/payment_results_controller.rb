class PaymentResultsController < ApplicationController
    def get_payment
    apr_input = params.fetch("apr").to_f  
    years = params.fetch("years").to_i  
    present_value = params.fetch("pv").to_f  

    @apr = apr_input / 100 / 12

    months = years * 12

    @numerator = @apr * present_value
    @denominator = 1 - (1 + @apr)**(-months)
    @monthly_payment = (@numerator / @denominator).to_fs(:currency)  

    @apr_display = apr_input.to_fs(:percentage, precision: 4)  
    @years = years  
    @principal_display = present_value.to_fs(:currency) 

    render({ template: "/pages/payment_results"})
  end
end
