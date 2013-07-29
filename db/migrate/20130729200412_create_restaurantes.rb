class CreateRestaurantes < ActiveRecord::Migration
  def change
    create_table :restaurantes do |t|
      t.string :nome, limit: 80
      t.string :endereco
      t.string :especialidade, limit: 40
      t.timestamps
      t.timestamps
    end
  end
end
