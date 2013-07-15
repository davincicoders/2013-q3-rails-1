require 'bundler'
Bundler.require

desc "Run a Pry session with models from Sinatra app specified by config.ru"
task :console do
  require 'rack'
  require 'pry'

  # load Sinatra app specified in config.ru
  app, options = Rack::Builder.parse_file('config.ru')
  
  # 'rake console' is two words; remove first so can specify pry args
  ARGV.shift

  # like running pry from command line
  Pry::CLI.parse_options # like running pry from command line
end

desc "List routes of the Sinatra app specified in config.ru"
task :routes do
  require 'rack'

  # load Sinatra app specified in config.ru
  app, options = Rack::Builder.parse_file('config.ru')

  # thanks to cldwalker's tux gem for this code to interpret Sinatra routes
  routes = app.routes.inject([]) {|arr, (k,v)|
    arr += v.map {|regex,params,*|
      path = params.empty? ? regex.inspect :
        params.inject(regex.inspect) {|s,e| s.sub(/\([^()]+\)/, ":#{e}") }
      [k, (str = path[%r{/\^(.*)\$/}, 1]) ? str.tr('\\', '') : path]
    }
  }

  # still need to pull the regex syntax out
  routes = routes.map do |method_and_path|
    method, path = method_and_path
    path = path.to_s.gsub("\\/", "/").gsub(%r[^/\\A], "").gsub(%r[\\z/$], "")
    "#{method} #{path}"
  end

  # don't show HEAD requests
  routes = routes.reject! { |route| route =~ /^HEAD / }

  # GET and POST paths should line up at the same column
  routes.each { |route| route.gsub! /^GET /, "GET  " }

  routes.each { |route| puts route }
end
