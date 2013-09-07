#\ -p 9000
# Run server on port 9000 not 9292 by default

# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment',  __FILE__)
run Rails.application
