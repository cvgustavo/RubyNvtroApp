class RemoveDatalimitefaturamentoFromConvenios < ActiveRecord::Migration
  def change
	  remove_column :convenios, :datalimitefaturamento, :date
  end
end
