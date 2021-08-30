class Student < ActiveRecord::Base
  after_initialize :init

  def init
    self.active = false if self.active.nil?
  end

  def to_s
    self.first_name + " " + self.last_name
  end

  def active_check
    if self.active
      "This student is currently active."
    else
      "This student is currently inactive."
    end
  end
end