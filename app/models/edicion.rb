class Edicion < ActiveRecord::Base
  scope :actuales, -> {where(actual: true)}
end
