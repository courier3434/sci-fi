FactoryBot.define do
  factory :movie do
      name { 'star wars' }
  end
  factory :choice do
        association :movie

    name { 'action' }
  end
end

