class CreateContatos < ActiveRecord::Migration
  def change
    create_table :contatos do |t|
      t.string :nome
      t.string :funcao
      t.string :telefone
      t.string :celular
      t.string :email
      t.references :donocontato, polymorphic: true, index: true

      t.timestamps
    end
  end
end
