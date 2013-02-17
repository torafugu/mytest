class Rteam < ActiveRecord::Base
  has_many :rmembers
  belongs_to :rleague
end
