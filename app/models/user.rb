class User < ApplicationRecord
  has_many :pair_requests, :class_name => "Pair", :foreign_key => "requestor_user_id"
  has_many :pair_responses, :class_name => "Pair", :foreign_key => "respondor_user_id"

#multiple associatons between 2 models
#two aliases
#aliases: class name is pair, foreign key =users pairs
# advanced associations
# a user can have many pairs


  has_secure_password

end

#active record model
#ruby class
#ruby object that can interact with our database through methods without SQL
#bundle exec rails c --> rails console
#--> User.all (active record method runs corresponding SQL, gets back an array)
#-->   User Load (0.2ms)  SELECT "users".* FROM "users" LIMIT ?  [["LIMIT", 11]]
# => #<ActiveRecord::Relation [#<User id: 1, email: "dahliabloomstone@gmail.com", created_at: "2020
#-08-18 21:41:24", updated_at: "2020-08-18 21:41:24", password_digest: [FILTERED]>]>
#validate and make sure the model works
