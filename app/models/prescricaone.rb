class Prescricaone < ActiveRecord::Base
  belongs_to :paciente
  belongs_to :internacao
end
