class Etapane < ActiveRecord::Base
	belongs_to :prescricaone
	has_many :linhaetapanes
end
