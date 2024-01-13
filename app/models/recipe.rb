class Recipe < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :comments
  has_many :likes

  validates :title, presence: true
  validates :ingredient, presence: { message: "can't be blank" }, if: ->(recipe) { recipe.instruction.present? }
  validates :instruction, presence: { message: "can't be blank" }, if: ->(recipe) { recipe.ingredient.present? }
  validates :ingredient, :instruction, :reference_url, presence: { message: "can't be blank" },
                                                       if: lambda { |recipe|
                                                             recipe.ingredient.blank? && recipe.instruction.blank? && recipe.reference_url.blank?
                                                           }

  def liked_by?(user)
    likes.where(user_id: user.id).exists?
  end

  def self.search(search)
    if search != ''
      Recipe.where('title LIKE(?)', "%#{search}%")
    else
      Recipe.all
    end
  end
end
