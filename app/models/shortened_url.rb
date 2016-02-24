class ShortenedUrl < ActiveRecord::Base

  validates :short_url, :presence => true, :uniqueness => true

  belongs_to(
    :submitter,
    class_name: 'User',
    foreign_key: :submitter_id,
    primary_key: :id
  )

  def self.random_code
    code = nil
    until code && !exists?(code)
      code = SecureRandom.urlsafe_base64
    end
    code
  end

  def self.create_for_user_and_long_url!(user, long_url)
    create!(submitter_id: user,
            long_url: long_url,
            short_url: ShortenedUrl.random_code)
  end

end
