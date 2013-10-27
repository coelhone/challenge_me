module ChallengesHelper

  def owner_of_challenge? challenge
    challenge.user_id == current_user.try(:id)
  end
end
