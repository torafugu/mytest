class Koujou < ActiveRecord::Base
  has_many :kouins
  has_many :seihins
end
