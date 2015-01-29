class CreateConvenios < ActiveRecord::Migration
  def change
    create_table :convenios do |t|
      t.string :nome
      t.string :tipo
      t.string :urllogo
      t.string :site
      t.date :datalimitefaturamento
      t.decimal :faturamentomedio, precision: 8, scale: 2
      t.decimal :ultimofaturamento, precision: 8, scale: 2
      t.integer :qtdpacientes

      t.timestamps
    end
  end
end
