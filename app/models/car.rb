class Car < ActiveRecord::Base
  belongs_to :local
  
  validates :placa, presence: true
  validates :local, presence: true
  validates :modelo, presence: true
  validates :combustivel, presence: true
  validates :anofabricacao, presence: true
  validates :anomodelo, presence: true
  validates :km, presence: true
  validates :valorvenda, presence: true
end
