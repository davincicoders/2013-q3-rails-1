require '../dvc-sinatra.rb'

get "/" do
  halt erb(:index)
end

get "/reposts/1" do
  @title = "Spring cleanup for object creation in Ruby"
  @summary = "A complex object creation can clutter a controller. It’s better to move it into a dedicated method of the corresponding model."
  @link = "http://blog.8thcolor.com/2013/07/spring-cleanup-for-object-creation-in-rails/"
  halt erb(:repost)
end

get "/reposts/2" do
  @title = "How to support WebP images, save bandwidth and improve user performance"
  @summary = "The WebP format is another great tool to achieve our goals. With Cloudinary's on-the-fly, cloud-based WebP image format conversion, this becomes much simpler."
  @link = "http://cloudinary.com/blog/how_to_support_webp_images_save_bandwidth_and_improve_user_performance"
  halt erb(:repost)
end
