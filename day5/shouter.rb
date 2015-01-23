require 'rubygems'
require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'shouter.sqlite'
)

class User < ActiveRecord::Base
  # your stuff here
end

class Shouter < ActiveRecord::Base
  # your stuff here
end
