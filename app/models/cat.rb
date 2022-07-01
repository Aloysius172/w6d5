# == Schema Information
#
# Table name: cats
#
#  id          :bigint           not null, primary key
#  color       :string           not null
#  name        :string           not null
#  sex         :string(1)        not null
#  description :text             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  birth_date  :string           not null
#
require 'action_view'
class Cat < ApplicationRecord

    COLORS = %w(black brown orange grey white)
    SEX = %w(M F)
    validates :birth_date, presence: true
    validates :color, presence: true, inclusion: { in: COLORS,  message: "%{value} is not a valid color" }
    validates :name,  presence: true
    validates :sex, presence: true, inclusion: { in: SEX,  message: "%{value} is not a valid sex" }

    ActionView::Helpers::DateHelper
    def age
        @age = Time.now - birth_date 
    end
end
