class RemoveAutorizacaourlContamedicaurlChecagemurlEntregaurlFromPrescricaone < ActiveRecord::Migration
  def change
    remove_column :prescricaones, :autorizacaourl, :string
    remove_column :prescricaones, :contamedicaurl, :string
    remove_column :prescricaones, :checagemurl, :string
    remove_column :prescricaones, :entregaurl, :string
  end
end
