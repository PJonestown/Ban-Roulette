FactoryGirl.define do
  today = DateTime.now

  factory :ban do
    start_time nil
    end_time nil
    association :user

    factory :current_ban do
      start_time today
      end_time today + 1.minute
    end
  end
end
