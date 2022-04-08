class Schedule < ApplicationRecord
    validates :title, :start, :finish, presence: true
    validate :finish, if: :finish_date
    
end

def finish_date
    return if finish.blank? || start.blank?
    if finish >= start
    else
        errors.add(:finish, "は開始日より前の日付で登録できません。")
    end
end
