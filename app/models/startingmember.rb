class Startingmember < ActiveRecord::Base
  has_many :players, :autosave => true
end
