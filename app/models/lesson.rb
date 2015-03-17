class Lesson < ActiveRecord::Base
  validates :name, :presence => true
  validates :text, :presence => true

  def next
    Lesson.find_by number: number + 1
  end
end
