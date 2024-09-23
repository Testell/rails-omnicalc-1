Rails.application.routes.draw do
  get("/", { controller: "square_form", action: "square_form"})
  get("/square/new", { controller: "square_form", action: "square_form"})
  get("/square/results", { controller: "square_results", action: "get_square"})
  get("/square_root/new", { controller: "square_root_form", action: "square_root_form"})
  get("/square_root/results", { controller: "square_root_results", action: "get_square_root"})
  get("/random/new", { controller: "random_form", action: "random_form"})
  get("/random/results", { controller: "random_results", action: "get_random"})
  get("/payment/new", { controller: "payment_form", action: "payment_form" })
  get("/payment/results", { controller: "payment_results", action: "get_payment"})
end
