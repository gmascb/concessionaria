class CreateMeioPagamentos < ActiveRecord::Migration
  def change
    create_table :meio_pagamentos do |t|
      t.integer :numparcelas
      t.integer :tipo
      t.string :descricao

      t.timestamps null: false
    end
  end
end
