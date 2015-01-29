class CreateEnderecos < ActiveRecord::Migration
  def change
    create_table :enderecos do |t|
      t.string :nome
      t.string :rua
      t.string :numero
      t.string :complemento
      t.string :CEP
      t.string :cidade
      t.string :estado
      t.references :donoendereco, polymorphic: true, index: true

      t.timestamps
    end
  end
end
