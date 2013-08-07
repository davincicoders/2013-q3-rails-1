require '../dvc-sinatra.rb'

get "/" do
  halt erb(:grid)
end

get "/listings" do
  model = params[:model]
  gigs = params[:gigs]
  if model != nil
    if gigs != nil
      @listings =
        Listing.where(model: model).where(gigs: gigs).order(:price).all
    else
      @listings = Listing.where(model: model).order(:price).all
    end
  else
    if gigs != nil
      @listings = Listing.where(gigs: gigs).order(:price).all
    else
      @listings = Listing.order(:price).all
    end
  end
  halt erb(:listings)
end
