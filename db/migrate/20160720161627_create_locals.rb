class CreateLocals < ActiveRecord::Migration
  def change
    create_table :locals do |t|
      t.string :descricao

      t.timestamps null: false
    end
  end
end
