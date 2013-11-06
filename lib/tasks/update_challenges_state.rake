namespace :challenge do
  desc "Updates state of challenges"
  task :update => :environment do
    active_challenge  = Challenge.with_state("active").first
    created_challenge = Challenge.with_state("created").first

    if active_challenge
      if active_challenge.created_at < 1.week.ago
        active_challenge.close and created_challenge.try(:activate)
      end
    else
      created_challenge.try(:activate)
    end
  end
end