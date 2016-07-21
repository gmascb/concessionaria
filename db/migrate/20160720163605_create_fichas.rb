class CreateFichas < ActiveRecord::Migration
  def change
    create_table :fichas do |t|
      t.date :data
      t.references :Vendedor, index: true, foreign_key: true
      t.references :Banco, index: true, foreign_key: true
      t.integer :tipopfin
      t.string :coef
      t.decimal :valfinanceiro
      t.integer :numparcelas
      t.decimal :valorparcela
      t.decimal :valortotal
      t.references :Customer, index: true, foreign_key: true
      t.references :Cars, index: true, foreign_key: true
      t.references :MeioPagamento, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
