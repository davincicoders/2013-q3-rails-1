require '../dvc-sinatra.rb'

get "/" do
  halt erb(:index)
end

get "/example1" do
  @temperature = 35
  @code = "B75"
  @test_passed = true
  @operating_system = "Mac"
  halt erb(:example)
end

get "/example2" do
  @temperature = 45
  @test_passed = false
  @operating_system = "Other"
  @operating_system_other = "Chrome OS"
  halt erb(:example)
end
