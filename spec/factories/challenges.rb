# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :challenge do
    name "MyString"
    date "2013-10-23 22:52:11"
    closed false
    user nil
    desc "MyText"
  end
end
