class CreateEtapanes < ActiveRecord::Migration
  def change
    create_table :etapanes do |t|
      t.string :qtd
      t.string :volume

      t.timestamps
    end
  end
end
