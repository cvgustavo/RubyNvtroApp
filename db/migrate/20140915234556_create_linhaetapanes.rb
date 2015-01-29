class CreateLinhaetapanes < ActiveRecord::Migration
  def change
    create_table :linhaetapanes do |t|
      t.string :produto
      t.decimal :qtd, precision: 8, scale: 4
      t.decimal :custo, precision: 8, scale: 8

      t.timestamps
    end
  end
end
