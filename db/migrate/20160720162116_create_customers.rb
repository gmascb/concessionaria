class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :nome
      t.string :telefone
      t.string :endereco
      t.string :cpfcnpj
      t.integer :clioufor
      t.string :email

      t.timestamps null: false
    end
  end
end
