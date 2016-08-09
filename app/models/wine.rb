class Wine < ActiveRecord::Base
	belongs_to :type
	belongs_to :appellation
	belongs_to :age

	has_many :wine_grapes
	has_many :grape_types, through: :wine_grapes

	accepts_nested_attributes_for :wine_grapes, reject_if:  proc { |attributes| attributes['grape_type_id'].blank? }, allow_destroy: true
end
