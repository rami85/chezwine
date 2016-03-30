class WineGrape < ActiveRecord::Base
  belongs_to :wine
  belongs_to :grape_type
end
