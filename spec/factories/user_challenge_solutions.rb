# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user_challenge_solution do
    user nil
    challenge nil
    solution nil
    time 1
    memory 1
    lines 1
    points 1
  end
end
