class Registration < ApplicationRecord
  belongs_to :user
  belongs_to :public_uid
end
