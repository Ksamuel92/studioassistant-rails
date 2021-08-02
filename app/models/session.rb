class RecSession < ApplicationRecord
  belongs_to :studio
  belongs_to :client
end
