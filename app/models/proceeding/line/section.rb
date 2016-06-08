class Proceeding::Line::Section < ActiveRecord::Base
  belongs_to :line

  has_many :proposals, class_name: 'Proceeding::Line::Proposal'

  validates title: presence
end
