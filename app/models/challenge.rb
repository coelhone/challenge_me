class Challenge < ActiveRecord::Base
  belongs_to :user

  has_attached_file :challenge_file,
      :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
      :url => "/system/:attachment/:id/:style/:filename"
end
