class AddIndexToReceitas < ActiveRecord::Migration
  def change
  	add_index :receitas, :prato_id
  end
end
