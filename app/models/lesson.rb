class Lesson < ActiveRecord::Base
  belongs_to :section
  validates :name, :presence => true
  validates :text, :presence => true

  def next
    Lesson.find_by number: number + 1
  end

  def prev
    Lesson.find_by number: number - 1
  end
end
