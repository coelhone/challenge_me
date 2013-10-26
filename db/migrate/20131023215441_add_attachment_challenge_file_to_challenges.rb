class AddAttachmentChallengeFileToChallenges < ActiveRecord::Migration
  def self.up
    change_table :challenges do |t|
      t.attachment :challenge_file
    end
  end

  def self.down
    drop_attached_file :challenges, :challenge_file
  end
end
