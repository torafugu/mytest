class Betterlineup < ActiveRecord::Base
  belongs_to :bettergame
  belongs_to :player
end
