class Ficha < ActiveRecord::Base
  belongs_to :Vendedor
  belongs_to :Banco
  belongs_to :Customer
  belongs_to :Cars
  belongs_to :MeioPagamento
  
  validates :Vendedor, presence: true
  validates :Banco, presence: true
  validates :Customer, presence: true
  validates :Cars, presence: true
  validates :MeioPagamento, presence: true
  validates :coef, presence: true
  validates :valfinanceiro, presence: true
  validates :valorparcela, presence: true
  validates :valortotal, presence: true
end
