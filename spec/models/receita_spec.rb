require 'spec_helper'

describe Receita do

  it { should belong_to(:prato) }

  it { should validate_presence_of(:conteudo).with_message(" - deve ser preenchido") }
end
