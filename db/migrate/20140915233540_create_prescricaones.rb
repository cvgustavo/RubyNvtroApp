class CreatePrescricaones < ActiveRecord::Migration
  def change
    create_table :prescricaones do |t|
      t.date :data
      t.decimal :custo, precision: 8, scale: 8
      t.decimal :valorfaturado, precision: 8, scale: 8
      t.references :paciente, index: true
      t.references :internacao, index: true
      t.string :nutricionista
      t.string :equipo
      t.string :autorizacaourl
      t.string :contamedicaurl
      t.string :checagemurl
      t.string :entregaurl
      t.string :motoqueiro

      t.timestamps
    end
  end
end
