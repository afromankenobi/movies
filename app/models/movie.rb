class Movie < ApplicationRecord
  has_many :movie_tags
  has_many :tags, through: :movie_tags

  attr_accessor :tags_ids

  mount_uploader :photo, PhotoUploader

  validates :name, presence: true

  def send_creation_mail(user)
    MovieMailer.notify_creation_to_user(user, self).deliver_now
  end
end
