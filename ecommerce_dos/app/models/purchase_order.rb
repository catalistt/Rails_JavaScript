class PurchaseOrder < ApplicationRecord
  enum status: [:open, :closed, :pending]
end
