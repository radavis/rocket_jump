FactoryGirl.define do
  factory :tagging do
    association :taggable, factory: :question
    tag
  end
end
