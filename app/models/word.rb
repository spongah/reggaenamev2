class Word < ActiveRecord::Base
	validates :word, presence: true, uniqueness: true, length: { maximum: 50 }
	validates :position, presence: true, inclusion: { in: 1..2, :message => "Word position must be 1 or 2" }

	before_validation :capitalize_content

  def capitalize_content
    self.word = self.word.capitalize
  end


end
