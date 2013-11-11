class Event < ActiveRecord::Base
  validates :date, presence: true
  validate :date_cannot_be_in_the_past
  validates :title, presence: true, uniqueness: true
  validates :organizer_name, presence: true
  validates :organizer_email, format: { with: /\w{1,}@\w{1,}\.\w{2,}/,
    message: "email address not valid" }

  def date_cannot_be_in_the_past
    if date < Date.today
      errors.add(:date, "can't be in the past")
      p date
    # elsif date.month
    end
  end

end
