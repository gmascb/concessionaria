class MeioPagamento < ActiveRecord::Base
    validates :numparcelas, presence: true
    validates :tipo, presence: true
    validates :descricao, presence: true
end
