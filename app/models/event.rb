class Event < ActiveRecord::Base
  validates :date, presence: true
  validate :date_cannot_be_in_the_past

  def date_cannot_be_in_the_past
    if date < Date.today
      errors.add(:date, "can't be in the past")
    # elsif date.month
    end
  end

end
