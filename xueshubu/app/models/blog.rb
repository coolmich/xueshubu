class Blog < ActiveRecord::Base
  has_attached_file :logo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"

  scope :college, -> {where(:category=>0)}
  scope :major, -> {where(:category=>1)}
  scope :transportation, -> {where(:category=>2)}
  scope :qa, -> {where(:category=>3)}
  scope :guide, -> {where(:category=>4)}
  scope :transfergrade, -> {where(:category=>5)}
  scope :transfercollege, -> {where(:category=>6)}
  scope :sdcc, -> {where(:category=>7)}
  scope :website, -> {where(:category=>8)}
  scope :library, -> {where(:category=>9)}
  scope :consult, -> {where(:category=>10)}
  scope :club, -> {where(:category=>11)}
  scope :jobresearch, -> {where(:category=>12)}
  scope :abroad, -> {where(:category=>13)}
end
