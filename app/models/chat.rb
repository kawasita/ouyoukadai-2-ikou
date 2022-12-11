class Chat < ApplicationRecord
  belongs_to :user_params
  belongs_to :room
  validates :message,presence:true,length:{maximum:140}
end
