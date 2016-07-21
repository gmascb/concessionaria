class Ficha < ActiveRecord::Base
  belongs_to :Vendedor
  belongs_to :Banco
  belongs_to :Customer
  belongs_to :Cars
  belongs_to :MeioPagamento
end
