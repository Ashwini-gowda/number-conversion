class PreviousHolder < ApplicationRecord

  validates :empid, :from_previous_holder_date, :to_current_holder_date, :name, presence: true

end
