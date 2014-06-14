FactoryGirl.define do
  factory :question do
    body "how do i rails?"

    factory :question_with_tags do
      ignore do
        tags_count 1
      end

      after(:create) do |question, evaluator|
        create_list(:tagging, evaluator.tags_count, taggable: question)
      end
    end

    factory :question_with_replies do
      ignore do
        tags_count 1
      end

      after(:create) do |question, evaluator|
        create_list(:reply, evaluator.tags_count)
      end
    end
  end
end
