class PlayerRound < ActiveRecord::Base
  belongs_to :user
  belongs_to :round
end