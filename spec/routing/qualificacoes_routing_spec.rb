require "spec_helper"

describe QualificacoesController do
  describe "routing" do

    it "routes to #index" do
      get("/qualificacoes").should route_to("qualificacoes#index")
    end

    it "routes to #new" do
      get("/qualificacoes/new").should route_to("qualificacoes#new")
    end

    it "routes to #show" do
      get("/qualificacoes/1").should route_to("qualificacoes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/qualificacoes/1/edit").should route_to("qualificacoes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/qualificacoes").should route_to("qualificacoes#create")
    end

    it "routes to #update" do
      put("/qualificacoes/1").should route_to("qualificacoes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/qualificacoes/1").should route_to("qualificacoes#destroy", :id => "1")
    end

  end
end
