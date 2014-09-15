class Endereco < ActiveRecord::Base
  belongs_to :donoendereco, polymorphic: true
end
