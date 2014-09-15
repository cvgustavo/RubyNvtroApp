class Produto < ActiveRecord::Base
  belongs_to :fabricante
  belongs_to :tipoproduto
end
