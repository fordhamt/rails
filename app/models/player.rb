class Player < ActiveRecord::Base
has_many :stats, dependent: :destroy

default_scope -> { order(rank: :asc) }

validates_uniqueness_of :playername, :scope => :server

validates :rank, presence: true, uniqueness: true
validates :rating, presence: true
validates :playername, presence: true
validates :server, presence: true
validates :race, presence: true
validates :gender, presence: true
validates :class, presence: true
validates :faction, presence: true
validates :seasonwins, presence: true
validates :seasonlosses, presence: true

def feed
  Stat.where("player_id = ?", id)
end
end
