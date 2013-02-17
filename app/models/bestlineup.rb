class Bestlineup < ActiveRecord::Base
  belongs_to :bestgame
  belongs_to :player
end
