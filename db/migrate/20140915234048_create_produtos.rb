class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.string :nome
      t.string :custo
      t.references :fabricante, index: true
      t.references :tipoproduto, index: true

      t.timestamps
    end
  end
end
