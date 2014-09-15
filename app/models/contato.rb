class Contato < ActiveRecord::Base
  belongs_to :donocontato, polymorphic: true
end
