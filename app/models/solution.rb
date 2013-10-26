class Solution < ActiveRecord::Base

  has_attached_file :solution_file,
      :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
      :url => "/system/:attachment/:id/:style/:filename"
end
