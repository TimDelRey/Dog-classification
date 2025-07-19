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
class DogSize < ApplicationRecord
  has_many :breeds
end
