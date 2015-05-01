FactoryGirl.define do
  factory :user do
    username 'Katje Borgesius'

    factory :invalid_user do
      username nil
    end
  end
end
