class Territory < ActiveRecord::Base
  belongs_to :user
  attr_accessible :x, :y, :user_id, :home
end
