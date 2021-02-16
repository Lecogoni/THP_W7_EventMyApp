class Event < ApplicationRecord

  has_many :participations, dependent: :destroy

  validates  :duration, :title, :description, :price, :location, presence: true 

  validates :title, length: { in: 5..140 }  

  validates :description, length: { in: 20..1000 }
  validates :price, inclusion: { in: 1..1000 }

  def start_date_over_now
      start_date > Time.now
  end
  
  def five_modulo
    duration % 5 == 0 && duration > 0
  end
  
end
