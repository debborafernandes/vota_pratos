class CreateReceita < ActiveRecord::Migration
  def change
    create_table :receitas do |t|
    	t.references :prato
    	t.text       :conteudo
      t.timestamps
    end
  end
end
