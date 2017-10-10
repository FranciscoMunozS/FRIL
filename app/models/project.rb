class Project < ApplicationRecord
  belongs_to :user
  has_many :observations, inverse_of: :project

  mount_uploader :file, FileUploader
  mount_uploader :attachment, AttachmentUploader

  validates :name, presence: true

  auto_increment :visit_id

  accepts_nested_attributes_for :observations, reject_if: :all_blank, allow_destroy: true
end
