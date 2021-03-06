class User < ActiveRecord::Base
  has_many :items
  before_save { self.email = email.downcase }
  validates :password, presence: true, length: { minimum: 6 }, unless: :password_digest
  validates :password, length: { minimum: 6 }, allow_blank: true
  validates :email,
           presence: true,
           uniqueness: { case_sensitive: false },
           length: { minimum: 3, maximum: 254 }
  has_secure_password

  def cart_count
    $redis.scard "cart#{id}"
  end

end
