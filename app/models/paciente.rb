class Paciente < ActiveRecord::Base
  belongs_to :convenio
  has_many :prescricaones
end
