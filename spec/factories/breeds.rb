# == Schema Information
#
# Table name: breeds
#
#  id          :bigint           not null, primary key
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  dog_size_id :bigint           not null
#
# Indexes
#
#  index_breeds_on_dog_size_id  (dog_size_id)
#
# Foreign Keys
#
#  fk_rails_...  (dog_size_id => dog_sizes.id)
#
FactoryBot.define do
  factory :breed do
    name { "basenji" }
    dog_size { nil }
  end
end
