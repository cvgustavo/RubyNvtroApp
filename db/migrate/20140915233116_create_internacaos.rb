class CreateInternacaos < ActiveRecord::Migration
  def change
    create_table :internacaos do |t|
      t.string :gih
      t.date :validade
      t.string :leito
	  t.references :hospital
	  t.references :paciente

      t.timestamps
    end
  end
end
