class Task < ApplicationRecord
  enum status: { todo: 0, doing: 1, done: 2 }
  validates :title, presence: true
  validates :status, presence: true
  validates :deadline, presence: true
  # validate :deadline, :must_start_from_today

  # def must_start_from_today
  #   errors.add(:deadline, 'must start from today.') if deadline.present? && deadline < Date.current
  # end

  #ransack_alias :deadline, :deadline_date
  # ransackable_attributes %w[title description deadline] # 検索可能な属性を指定
  # ransackable_associations []
end
