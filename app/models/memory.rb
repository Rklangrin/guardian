class Memory < ActiveRecord::Base

  belongs_to :guardian_profile, foreign_key: :guardian_id

  validates :guardian_id, :audio_recording, :description, presence: true

  def formatted_date
    date.strftime("%m/%d/%Y")
  end
end
