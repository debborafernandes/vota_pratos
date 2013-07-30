require 'spec_helper'

describe Restaurante do

  it { should have_many(:qualificacoes) }
  # it { should have_and_belong_to_many(:pratos) }

  it { should validate_presence_of(:nome) }
end
