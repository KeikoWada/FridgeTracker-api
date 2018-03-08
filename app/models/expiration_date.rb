class ExpirationDate < ApplicationRecord
  belongs_to :user, optional: true
end
