# == Schema Information
#
# Table name: world_cup_finals
#
#  id              :bigint           not null, primary key
#  champion        :string
#  champion_score  :integer
#  runner_up       :string
#  runner_up_score :integer
#  year            :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class WorldCupFinal < ApplicationRecord
    validates :year, presence:true
    validates :champion, presence:true
    validates :champion_score, presence:true
    validates :runner_up, presence:true
    validates :runner_up_score, presence:true
end
