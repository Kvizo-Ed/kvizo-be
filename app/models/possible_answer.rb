class PossibleAnswer < ApplicationRecord
  belongs_to :question
  validates_presence_of :text
end
