class NfVenda < ActiveRecord::Base
  belongs_to :Ficha
  
  validates :numerodocumento, presence: true
  validates :valor, presence: true
  validates :desconto, presence: true
  validates :acrescimo, presence: true
  
  
end
