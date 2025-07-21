# == Schema Information
#
# Table name: dog_sizes
#
#  id          :bigint           not null, primary key
#  description :text             default("weight ..-.. and height ..-..")
#  size        :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
FactoryBot.define do
  factory :dog_size do
    size { "Medium" }
    description { "weight 11-25 kg and height 41-55 sm" }
  end
end
