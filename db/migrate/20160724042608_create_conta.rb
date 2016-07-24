class CreateConta < ActiveRecord::Migration
  def change
    create_table :conta do |t|
      t.date :vencimento
      t.date :emissao
      t.references :Ficha, index: true, foreign_key: true
      t.references :Customer, index: true, foreign_key: true
      t.string :historico
      t.date :datapagamento
      t.integer :status

      t.timestamps null: false
    end
  end
end
