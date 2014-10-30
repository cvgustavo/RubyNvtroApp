class RemoveUrllogoFromConvenio < ActiveRecord::Migration
  def change
	  remove_column :convenios, :urllogo, :string
  end
end
