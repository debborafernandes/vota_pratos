require 'spec_helper'

describe "qualificacoes/index" do
  before(:each) do
    assign(:qualificacoes, [
      stub_model(Qualificacao,
        :cliente_id => 1,
        :restaurante_id => 2,
        :nota => 1.5,
        :valor_gasto => 1.5
      ),
      stub_model(Qualificacao,
        :cliente_id => 1,
        :restaurante_id => 2,
        :nota => 1.5,
        :valor_gasto => 1.5
      )
    ])
  end

  it "renders a list of qualificacoes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
