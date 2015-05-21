FactoryGirl.define do
  factory :user do
    username 'Katje Borgesius'
    ip_address '192.168.0.1'

    factory :banned_user do
      after(:create) do |user|
        create(:current_ban, user: user)
      end
    end

    factory :unbanned_user do
      after(:create) do |user|
        create(:expired_ban, user: user)
      end
    end

    factory :nil_unbanned_user do
      after(:create) do |user|
        create(:ban, user: user)
      end
    end

    factory :invalid_user do
      username nil
    end
  end
end
