class Lancamento < ActiveRecord::Base
  belongs_to :Ficha
  belongs_to :Customer
  
  validates :status, presence: true
  validates :Customer_id, presence: true
  validates :dtemissao, presence: true
  validates :dtvencimento, presence: true
  validates :valor, presence: true
end
