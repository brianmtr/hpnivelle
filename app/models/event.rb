class Event < ApplicationRecord
include ImageUploader::Attachment.new(:image)
validates :title, presence: true
validates :description, presence: true
validates :adress, presence: true
validates :date, presence: true
validates :hour, presence: true
validates :image_data, presence: true
end

