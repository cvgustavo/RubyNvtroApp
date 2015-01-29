class CreatePacientes < ActiveRecord::Migration
  def change
    create_table :pacientes do |t|
      t.string :nome
      t.references :convenio, index: true
      t.string :carteiranumero
      t.date :idade
      t.decimal :peso, precision: 8, scale: 2
      t.decimal :altura, precision: 8, scale: 2
      t.boolean :iskid

      t.timestamps
    end
  end
end
