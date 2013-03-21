class Recipe < ActiveRecord::Base
  attr_accessible :imgUrl, :instructions, :name, :rating, :webUrl
end
