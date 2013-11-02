class Solution < ActiveRecord::Base

  belongs_to :user
  belongs_to :challenge

  has_attached_file :solution_file,
      :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
      :url => "/system/:attachment/:id/:style/:filename"

 validates :desc, presence: true, if: "solution_file.blank?"

 validates :challenge_id, :user_id, presence: true

 validates :solution_file, attachment_presence: true, if: "desc.blank?"
 validates :solution_file, attachment_presence: true, if: "solution_file.present?"
 validates :solution_file, attachment_presence: true, if: "solution_file.present?"

 after_save :profile_solution

 def profile_solution
   
 end
end
