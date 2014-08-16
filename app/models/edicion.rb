class Edicion < ActiveRecord::Base
  scope :actuales, -> {where(actual: true)}

  validates_uniqueness_of :nombre
end
