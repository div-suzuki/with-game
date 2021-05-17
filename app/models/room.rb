class Room < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :member
  belongs_to :user

  validates :member_id, numericality: { other_than: 1 } 

  acts_as_taggable


end
