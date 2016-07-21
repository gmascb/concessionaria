class Local < ActiveRecord::Base
    validates :descricao, presence: true
end
