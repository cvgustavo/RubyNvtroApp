class CreateTipoprodutos < ActiveRecord::Migration
  def change
    create_table :tipoprodutos do |t|
      t.string :nome
      t.string :descricao

      t.timestamps
    end
  end
end
