class Feedback < ApplicationRecord
  validates :title, :body, presence: true, length: {minimum:3}
end
