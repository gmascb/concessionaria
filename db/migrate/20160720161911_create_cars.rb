class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.integer :status
      t.references :local, index: true, foreign_key: true
      t.string :placa
      t.string :modelo
      t.integer :combustivel
      t.date :anofabricacao
      t.date :anomodelo
      t.decimal :km
      t.decimal :valorvenda

      t.timestamps null: false
    end
  end
end
