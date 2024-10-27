Rails.application.routes.draw do

  get("/square/new", { :controller => "zebra", :action => "square_new"})

  get("/square/results", { :controller => "zebra", :action => "square_results"})

  get("/square_root/new", { :controller => "zebra", :action => "square_root_new"})

  get("/square_root/results", { :controller => "zebra", :action => "square_root_results"})

  get("/payment/new", { :controller => "zebra", :action => "payment_new"})

  get("/payment/results", { :controller => "zebra", :action => "payment_results"})

  get("/random/new", { :controller => "zebra", :action => "random_new"})

  get("/random/results", { :controller => "zebra", :action => "random_results"})

  get("/", { :controller => "zebra", :action => "square_new"})
  
end
