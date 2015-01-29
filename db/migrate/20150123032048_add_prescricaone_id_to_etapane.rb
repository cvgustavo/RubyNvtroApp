class AddPrescricaoneIdToEtapane < ActiveRecord::Migration
  def change
    add_column :etapanes, :prescricaone_id, :integer
    add_index :etapanes, :prescricaone_id
  end
end
