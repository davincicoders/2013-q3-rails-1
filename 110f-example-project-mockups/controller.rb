require 'sinatra'

get "/" do
  halt erb(:term_2013_q1)
end

get "/2013-q1" do
  halt erb(:term_2013_q1)
end

get "/about-dvc" do
  halt erb(:about_dvc)
end

get "/contact-dvc" do
  halt erb(:contact_dvc)
end

get "/add-new-site" do
  halt erb(:add_new_site)
end

get "/past-terms" do
  halt erb(:past_terms)
end
