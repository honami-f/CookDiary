require 'rails_helper'

RSpec.describe Recipe, type: :model do
  before do
    @recipe = FactoryBot.build(:recipe)
  end

  describe 'レシピ新規投稿' do
    context '新規投稿できる場合' do
      it 'すべての項目の項目に入力があれば登録できる' do
        expect(@recipe).to be_valid
      end
      it '材料と作り方以外の必須項目の入力が存在すれば登録できる' do
        @recipe.ingredient = ''
        @recipe.instruction = ''
        expect(@recipe).to be_valid
      end
      it 'レシピ参考URL以外の必須項目の入力が存在すれば登録できる' do
        @recipe.reference_url = ''
        expect(@recipe).to be_valid
      end
      it 'メモ以外の必須項目の入力が存在すれば登録できる' do
        @recipe.memo = ''
        expect(@recipe).to be_valid
      end
    end
    context '新規投稿できない場合' do
      it 'titleが空では登録できない' do
        @recipe.title = ''
        @recipe.valid?
        expect(@recipe.errors.full_messages).to include "Title can't be blank"
      end
      it '材料が空では登録できない' do
        @recipe.ingredient = ''
        @recipe.valid?
        expect(@recipe.errors.full_messages).to include "Ingredient can't be blank"
      end
      it '作り方が空では登録できない' do
        @recipe.instruction = ''
        @recipe.valid?
        expect(@recipe.errors.full_messages).to include "Instruction can't be blank"
      end
      it '材料と作り方とURLが全て空では登録できない' do
        @recipe.ingredient = ''
        @recipe.instruction = ''
        @recipe.reference_url = ''
        @recipe.valid?
        expect(@recipe.errors.full_messages).to include "Instruction can't be blank"
      end
      it 'ユーザーが紐付いていなければ投稿できない' do
        @recipe.user = nil
        @recipe.valid?
        expect(@recipe.errors.full_messages).to include 'User must exist'
      end
    end
  end
end
