FactoryGirl.define do
  factory :user do
    username 'Katje Borgesius'
    ip_address '2602:306:80f6:5ee0:7994:82a6:fdec:b075'

    factory :invalid_user do
      username nil
    end
  end
end
