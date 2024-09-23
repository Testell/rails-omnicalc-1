Rails.application.routes.draw do
  get("/", { controller: "square_form", action: "square_form"})
  get("/square/new", { controller: "square_form", action: "square_form"})
  get("/square/results", { controller: "square_results", action: "get_square"})
  get("/square_root/new", { controller: "square_root_form", action: "square_root_form"})
  get("/square_root/results", { controller: "square_root_results", action: "get_square_root"})
end
