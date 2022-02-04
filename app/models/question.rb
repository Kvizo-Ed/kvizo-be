class Question < ApplicationRecord
  belongs_to :multi
  has_many :possible_answers
end
