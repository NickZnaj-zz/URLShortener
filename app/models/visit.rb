class Visit < ActiveRecord::Base

  validates :user_id, presence: true
  validates :shortened_url_id, presence: true

  belongs_to(
  :url,
  class_name: 'ShortenedUrl',
  primary_key: :id,
  foreign_key: :shortened_url_id
  )

  belongs_to(
  :user,
  class_name: 'User',
  primary_key: :id,
  foreign_key: :user_id
  )
end
