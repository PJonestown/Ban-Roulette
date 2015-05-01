FactoryGirl.define do
  factory :user do
    username 'Katje Borgesius'
    ip_address '127.0.0.1'

    factory :invalid_user do
      ip_address  nil
    end
  end
end
