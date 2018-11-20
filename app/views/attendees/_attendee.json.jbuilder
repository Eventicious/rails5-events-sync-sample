json.extract! attendee, :id, :firstName, :lastName, :position, :city, :vk, :twitter, :facebook, :email, :showEmail, :phone, :showPhone, :description, :externalImagePath, :externalThumbnailPath, :isSpeaker, :company, :language, :networkingCode, :authorized, :confirmed, :moderated, :withdrawed, :privateInfo, :created_at, :updated_at
json.url attendee_url(attendee, format: :json)
