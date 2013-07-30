#encoding: utf-8
class Restaurante < ActiveRecord::Base
  attr_accessible :nome, :endereco, :especialidade

  has_many :qualificacoes
  has_and_belongs_to_many :pratos

  validates :nome, presence: true, uniqueness: true, length: {minimum: 3, maximum: 50}

end
