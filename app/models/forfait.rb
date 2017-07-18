class Forfait < ApplicationRecord
  monetize :price_cents  # or :price_pennies
end
