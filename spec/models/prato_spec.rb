#encoding: utf-8
require 'spec_helper'

describe Prato do

  it { should have_one(:receita) }
  # it { should have_and_belong_to_many(:restaurantes) }

  it { should validate_presence_of(:nome).with_message(" - deve ser preenchido") }
	it { should validate_uniqueness_of(:nome).with_message(" - nome já cadastrado") }
end
