class Proceeding::Line::Proposal < ActiveRecord::Base
  belongs_to :line
  belongs_to :section
  belongs_to :author, -> { with_hidden }, class_name: 'User', foreign_key: :author_id

  has_many :comments, as: :commentable

  validates :title, presence: true
  validates :description, presence: true
end
