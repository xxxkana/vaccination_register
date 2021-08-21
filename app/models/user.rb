class User < ApplicationRecord
  #generate_public_uid

  devise :database_authenticatable, :registerable,:recoverable, :rememberable, :validatable

  with_options presence: true do
    validates :address, :datetime, :body_weight, :height, :body_temperature, :public_uid
    validates :name, format: {with: /\A[ぁ-んァ-ン一-龥]/}
    validates :name_reading, format: {with: /\A[ァ-ヶー－]+\z/}
    validates :phone_number,format: {with: /\A\d{10,11}\z/, message: "is invalid"}
    validates :blood_type_id, :allergy_id, :chronic_condition_id, :venue_id, numericality: { other_than: 1, message: "can't be blank"} 
  end

  PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i.freeze
  validates_format_of :password, with: PASSWORD_REGEX 
         

end
