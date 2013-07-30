#encoding: utf-8
require 'spec_helper'

describe Cliente do

	it { should have_many(:qualificacoes) }

	it { should validate_presence_of(:nome).with_message(" - deve ser preenchido") }
	it { should validate_uniqueness_of(:nome).with_message(" - nome já cadastrado") }


end
