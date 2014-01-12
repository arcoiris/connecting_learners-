class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  geocoded_by :zip_code
  validates :zip_code, presence: :true
  validates :zip_code, :numericality => { :only_integer => true }
  validates :zip_code, length: { :is => 5 }
  validates :name, presence: true
  validates :name, length: { maximum: 50 }
  after_validation :geocode, :if => :zip_code_changed?
  has_many :listings

end
