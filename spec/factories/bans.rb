FactoryGirl.define do
  factory :ban do
    start_time nil
    end_time nil
    association :user

    factory :current_ban do
      start_time DateTime.now
      end_time 20.years.from_now
    end

    factory :expired_ban do
      start_time 3.years.ago
      end_time 2.years.ago
    end
  end
end
