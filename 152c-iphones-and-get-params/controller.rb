require '../dvc-sinatra.rb'

get "/" do
  halt erb(:grid)
end

get "/listings" do
  model = params[:model]
  gigs = params[:gigs]

  # TODO: Assign to @listings variable, based on values of model and gigs
  #       variables.  You'll need to handle nil and non-nil values separately

  halt erb(:listings)
end
