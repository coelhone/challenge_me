class UserChallengeSolution < ActiveRecord::Base
  belongs_to :user
  belongs_to :challenge
  belongs_to :solution
end
