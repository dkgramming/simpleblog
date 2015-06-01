class Post < ActiveRecord::Base
  has_many :comments
  has_many :likes, :as => :likeable
end
