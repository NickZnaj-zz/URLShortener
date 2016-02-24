class User < ActiveRecord::Base

  validates :email, :presence => true, :uniqueness => true

  has_many(
    :submissions,
    class_name: 'ShortenedUrl',
    foreign_key: :submitter_id,
    key: :id
  )
  
end
