
FactoryGirl.define do
  sequence(:company_name) { Faker::Company.unique.name }

  factory :company_base, class: 'Company' do
    # Shared factory
  end

  factory :company, parent: :company_base do
    # Specs factory
  end

  feature_factory :company, parent: :company_base do
    # Feature specs factory
  end
end
