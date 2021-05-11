class Member < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '1人' },
    { id: 3, name: '2人' },
    { id: 4, name: '3人以上' }
  ]

  include ActiveHash::Associations
  has_many :rooms

  end