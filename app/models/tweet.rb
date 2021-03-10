class Tweet < ApplicationRecord
  validates :text, presence: true

  belongs_to :user
  has_many :comment

  def self.search(search)
    if search
      Tweet.where(['content LIKE ?', "%#{search}%"])
    else
      Tweet.all
    end
  end
end
