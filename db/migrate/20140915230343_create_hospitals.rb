class CreateHospitals < ActiveRecord::Migration
  def change
    create_table :hospitals do |t|
      t.string :nome
      t.integer :diasprontuario

      t.timestamps
    end
  end
end
