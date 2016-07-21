class CreateNfVendas < ActiveRecord::Migration
  def change
    create_table :nf_vendas do |t|
      t.string :numerodocumento
      t.decimal :valor
      t.decimal :desconto
      t.decimal :acrescimo
      t.references :Ficha, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
