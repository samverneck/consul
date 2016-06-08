class Proceeding::Line < ActiveRecord::Base
  belongs_to :proceeding

  has_many :sections
  has_many :comments, as: :commentable

  validates :title, presence: true
  validates :action_name, presence: true
  validates :type, inclusion: { in: %w{Debate Proposal} }
end
