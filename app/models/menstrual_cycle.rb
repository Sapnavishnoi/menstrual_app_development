class MenstrualCycle < ApplicationRecord
  belongs_to :user
  validates :starting_date, presence: true
  validates :ending_date, presence: true
  validate :ending_date_is_greater_than_start_date
  
  def ending_date_is_greater_than_start_date
    if ending_date.present? && starting_date > ending_date
      errors.add(:ending_date, "ending date is less than starting date")
    end
  end

end
