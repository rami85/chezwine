class Wine < ActiveRecord::Base
	belongs_to :type
	belongs_to :appellation
	belongs_to :age

	has_many :wine_grapes
	has_many :grape_types, through: :wine_grapes
end
