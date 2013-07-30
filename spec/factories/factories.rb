#coding: utf-8
FactoryGirl.define do

  factory :cliente do
    nome Faker::Name.name
  end

end