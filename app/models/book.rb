class Book < ApplicationRecord
  has_and_belongs_to_many :users
  validates_presence_of :title
  validates_presence_of :description
  validates_presence_of :genre
  validates_presence_of :author
  validates_numericality_of :length, :message=>"Error Message"
  def self.search(term)
    if term
      where('title LIKE ?', "%#{term}%")
    else
      all
    end
  end

end
