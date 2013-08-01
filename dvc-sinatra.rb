require 'active_record'
require 'logger'
require 'sinatra'
require 'yaml'
require 'action_view' # for Rails form helpers
require 'erubis' # for escaping of HTML

# Escape HTML
set :erb, escape_html: true

# Enable sessions -- note that a web server restart will invalidate all cookies
use Rack::Session::Cookie, secret: SecureRandom.hex

# for Rails form helpers
helpers ActionView::Helpers::FormTagHelper
helpers ActionView::Helpers::FormOptionsHelper

# avoid error message that we get from using Rails form helpers with Sinatra
helpers do
  def protect_against_forgery?
    false
  end
end

# Comment this line to turn off Active Record SQL logging
ActiveRecord::Base.logger = Logger.new(STDOUT)

if ENV['DATABASE_URL'] # for Heroku
  db = URI.parse(ENV['DATABASE_URL'])
  ActiveRecord::Base.establish_connection({
    adapter:  db.scheme == 'postgres' ? 'postgresql' : db.scheme,
    host:     db.host,
    port:     db.port,
    username: db.user,
    password: db.password,
    database: db.path[1..-1],
    encoding: 'utf8',
  })
elsif Dir.exists?('db') # for local development
  config = YAML.load_file('config/database.yml')
  ActiveRecord::Base.establish_connection(config['development'])

  after { ActiveRecord::Base.connection.close }
  # fix ConnectionTimeoutError
end

# Load models from models directory, like Rails
Dir['./models/*.rb'].each { |file| require file }
