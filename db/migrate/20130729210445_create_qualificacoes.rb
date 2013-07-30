class CreateQualificacoes < ActiveRecord::Migration
  def change
    create_table :qualificacoes do |t|
    	t.references :cliente
			t.references :restaurante
			t.float :nota
			t.float :valor_gasto
      t.timestamps
    end

    add_index(:qualificacoes, :cliente_id)
		add_index(:qualificacoes, :restaurante_id)
  end
end
