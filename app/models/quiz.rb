class Quiz < ApplicationRecord
  belongs_to :user
  has_many :questions
  validates_presence_of :subject
  validates_presence_of :topic
  validates_presence_of :title
  validates_presence_of :grade
end
