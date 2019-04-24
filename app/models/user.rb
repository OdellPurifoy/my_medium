class User < ApplicationRecord
  has_many :posts
  validates :first_name, :last_name, :email, :username, presence: true,
                                                        uniqueness: { case_sensitive: false },
                                                        format: /@/
end
