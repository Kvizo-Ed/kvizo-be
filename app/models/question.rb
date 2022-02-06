class Question < ApplicationRecord
  belongs_to :quiz
  has_many :possible_answers
  validates_presence_of :question_text
  validates_presence_of :question_type
  validates_presence_of :correct_answer
  accepts_nested_attributes_for :possible_answers
end
