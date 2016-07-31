class CreateLancamentos < ActiveRecord::Migration
  def change
    create_table :lancamentos do |t|
      t.integer :status
      t.references :Ficha, index: true, foreign_key: true
      t.references :Customer, index: true, foreign_key: true
      t.date :dtvencimento
      t.date :dtemissao
      t.date :dtpagamento
      t.string :historico
      t.decimal :valor
      t.decimal :valorpago
      t.decimal :acrescimo
      t.decimal :desconto

      t.timestamps null: false
    end
  end
end
