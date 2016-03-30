class GrapeType < ActiveRecord::Base
	has_many :wine_grapes
	has_many :wines, through: :wine_grapes
end
