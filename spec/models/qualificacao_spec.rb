require 'spec_helper'

describe Qualificacao do

  it { should belong_to(:cliente) }
  it { should belong_to(:restaurante) }

  it { should validate_presence_of(:nota).with_message(" - deve ser preenchido") }
	it { should validate_presence_of(:valor_gasto).with_message(" - deve ser preenchido") }
end
