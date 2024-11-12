class Article < ApplicationRecord
  validates :title, presence: true, length: { minimum: 5 }
  validates :content, presence: true
  before_save :make_title_pretty

  private

  def make_title_pretty
    self.title = title.titleize
  end
end
