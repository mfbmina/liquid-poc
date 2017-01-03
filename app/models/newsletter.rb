class Newsletter < ApplicationRecord
  validates :subject, presence: true
  validates :body, presence: true

  def deliver
    NewsletterMailer.build(self).deliver_now
  end
end
