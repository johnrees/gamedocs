class Lens < ActiveRecord::Base
  def questions
    [q1,q2,q3,q4,q5].reject(&:blank?)
  end
  def to_s
    "#{id}. #{name}"
  end
end
