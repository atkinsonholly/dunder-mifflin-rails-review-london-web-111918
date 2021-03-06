class Employee < ApplicationRecord
  belongs_to :dog

  validates :alias, uniqueness: true, unless: :no_alias?
  validates :title, uniqueness: true, unless: :no_title?

  def no_alias?
    self.alias == "none"
  end

  def no_title?
    self.title == "none"
  end

  def name_to_string
    first_name.to_s + " " + last_name.to_s
  end

end
