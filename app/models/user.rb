class User < ActiveRecord::Base
  has_many :wallposts
end
