class CreateConta < ActiveRecord::Migration
  def change
    create_table :conta do |t|
      t.date :vencimento
      t.date :emissao
      t.decimal :valor
      t.references :Ficha, index: true, foreign_key: true
      t.references :Customer, index: true, foreign_key: true
      t.string :historico

      t.timestamps null: false
    end
  end
end
