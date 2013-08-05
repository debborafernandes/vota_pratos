# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :qualificacao do
    cliente_id 1
    restaurante_id 1
    nota 1.5
    valor_gasto 1.5
  end
end
