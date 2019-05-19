class Item < ApplicationRecord
  validates :itemname, :brand, :purchase_date, :previous_holder_id, :current_holder_id, presence: true

end
