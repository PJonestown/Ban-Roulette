FactoryGirl.define do
  factory :user do
    username 'Katje Borgesius'
    ip_address '192.168.0.1'

    factory :invalid_user do
      username nil
    end
  end
end
