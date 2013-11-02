class Challenge < ActiveRecord::Base
  belongs_to :user

  has_attached_file :challenge_file,
      :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
      :url => "/system/:attachment/:id/:style/:filename"

  validates :name, presence: true, uniqueness: true
  validates :desc, presence: true, if: "challenge_file.blank?"

  validates :challenge_file, attachment_presence: true, if: "desc.blank?"
  validates :challenge_file, attachment_presence: true, if: "challenge_file.present?"
  validates :challenge_file, attachment_presence: true, if: "challenge_file.present?"

#  after_create :activate

  state_machine :state, :initial => :created do
    event :activate do
      transition :created => :active
    end

    event :close do
      transition :active => :closed
    end
  end

  def user_solution user
    Solution.where(challenge_id: self.id, user_id: user.id).first.try(:decorate)
  end
end
