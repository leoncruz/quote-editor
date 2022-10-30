class Quote < ApplicationRecord
  validates :name, presence: true

  broadcasts_to ->(_quote) { 'quotes' }, inserts_by: :prepend

  scope :ordered, -> { order(id: :desc) }
end
