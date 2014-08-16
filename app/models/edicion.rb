class Edicion < ActiveRecord::Base
  scope :actuales, -> {where(actual: true)}

  default_scope {order(:nombre)}

  validates_uniqueness_of :nombre
end
