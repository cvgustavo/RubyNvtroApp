class AddAttachmentAutorizacaoContamedicaChecagemEntregaToPrescricaones < ActiveRecord::Migration
  def self.up
    change_table :prescricaones do |t|
      t.attachment :autorizacao
      t.attachment :contamedica
      t.attachment :checagem
      t.attachment :entrega
    end
  end

  def self.down
    remove_attachment :prescricaones, :autorizacao
    remove_attachment :prescricaones, :contamedica
    remove_attachment :prescricaones, :checagem
    remove_attachment :prescricaones, :entrega
  end
end
