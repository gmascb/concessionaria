class Banco < ActiveRecord::Base
    validates :nome, presence: true
end
