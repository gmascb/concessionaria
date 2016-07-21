class Customer < ActiveRecord::Base
    
    validates :nome, presence: true
    validates :telefone, presence: true
    validates :endereco, presence: true
    validates :cpfcnpj, presence: true
    validates :clioufor, presence: true
    validates :email, presence: true
end
