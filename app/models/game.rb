class Game < ActiveRecord::Base
  has_many :players, :through => :lineups
  has_many :lineups
  accepts_nested_attributes_for :lineups
end
