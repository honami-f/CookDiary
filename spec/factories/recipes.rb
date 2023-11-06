FactoryBot.define do
  factory :recipe do
    title { 'オムレツ' }
    ingredient { '卵３個　ベーコン２枚' }
    instruction { '１、卵を溶く。ベーコンを細かく切り、卵と混ぜる。２、フライパンに油を引いて中火で焼く。' }
    reference_url { 'http// ' } 
    memo { 'お好みでチーズを入れると美味しい' }
    association :user

    after(:build) do |recipe|
      recipe.image.attach(io: File.open('app/assets/images/test_image.png'), filename: 'test_image.png')
    end

  end
end
