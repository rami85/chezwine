class Wine < ActiveRecord::Base
  belongs_to :type
  belongs_to :appellation
end
