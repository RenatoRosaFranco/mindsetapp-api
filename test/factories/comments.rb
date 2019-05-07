FactoryBot.define do
  factory :comment do
    body { "MyText" }
    idea { nil }
    user { nil }
  end
end
