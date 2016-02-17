class Tweet < ActiveRecord::Base
  has_attached_file :avatar, styles: { medium: '300x300>', thumb: '100x100>' }, default_url: '/images/:style/missing.png'
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
  validates :message, presence: true, length: { maximum: 140,
                                                too_long: 'A tweet is only 140 max. Everybody knows that!' }
  belongs_to :user
  has_many :likes
end
