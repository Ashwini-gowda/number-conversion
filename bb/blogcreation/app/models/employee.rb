class Employee < ApplicationRecord
  validates :name, :empid, :phonumber, :gender,:oining_date, presence: true
end
