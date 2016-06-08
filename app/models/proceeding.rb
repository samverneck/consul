class Proceeding < ActiveRecord::Base
  validates :title, presence: true, uniqueness: true
  validates :short_description, presence: true
  validates :long_description, presence: true
  validates :action_name, presence: true

  has_many :lines
end
