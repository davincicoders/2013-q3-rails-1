require 'bundler'
Bundler.require

require 'standalone_migrations'

# Use config/database.yml instead of db/config.yml for db connection config
module StandaloneMigrations
  class Configurator
    def config
      'config/database.yml'
    end
  end
end

if File.exists?('db')
  StandaloneMigrations::Tasks.load_tasks

  # Load models from models directory, like Rails (for db:seed task)
  Dir['./models/*.rb'].each { |file| require file }
end

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

namespace :db do
  desc "Show tables' schema and data in db specified by config/database.yml"
  task :dump do
    require '../dvc-sinatra'
    ActiveRecord::Base.logger = nil # turn off SQL logging

    sql = "select tablename from pg_tables where schemaname = 'public'"
    rows = ActiveRecord::Base.connection.execute(sql)
    rows.each do |row|
      table_name = row['tablename']
      puts "#{'_' * 25} #{table_name} table #{'_' * (42 - table_name.size)}"

      sql = "select column_name,
          case when udt_name = 'varchar'
            then concat('varchar(', character_maximum_length, ')')
            else data_type end as data_type,
          is_nullable
        from information_schema.columns
        where table_name = '#{table_name}'
        and table_schema = 'public'
        order by ordinal_position"
      rows2 = ActiveRecord::Base.connection.execute(sql)
      longest_name_length =
        rows2.collect { |row2| row2['column_name'].size }.max + 1
      rows2.each_with_index do |row2, i|
        puts sprintf("| Type of %-#{longest_name_length}s %s %s",
          row2['column_name'] + ':',
          row2['data_type'],
          row2['is_nullable'] ? 'not null' : '')
      end
      puts '' # to separate schema from data

      sql = "select * from #{table_name};"
      rows2 = ActiveRecord::Base.connection.execute(sql)
      if rows2.first
        keys = rows2.first.keys
        longest_key_length = keys.collect { |key| key.size }.max
        rows2.each_with_index do |row2, i|
          puts '' unless i == 0 # separation between rows
          keys.each do |key|
            value = row2[key]
            value = 'NULL' if value.nil?
            puts sprintf("%#{longest_key_length}s: %s", key, value)
          end
        end
      end
    end
    puts '_' * 75
  end
end
