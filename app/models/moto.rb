class Moto < ApplicationRecord
  belongs_to :user
  mount_uploader :photo, PhotoUploader
  include PgSearch
  pg_search_scope :search_by_model_and_brand_and_moto_type,
    against: [ :model, :brand, :moto_type ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
