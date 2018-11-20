class CreateAttendees < ActiveRecord::Migration[5.2]
  def change
    create_table :attendees do |t|
      t.string :firstName
      t.string :lastName
      t.string :position
      t.string :city
      t.string :vk
      t.string :twitter
      t.string :facebook
      t.string :email
      t.boolean :showEmail
      t.string :phone
      t.boolean :showPhone
      t.string :description
      t.string :externalImagePath
      t.string :externalThumbnailPath
      t.boolean :isSpeaker
      t.string :company
      t.string :language
      t.string :networkingCode
      t.boolean :authorized
      t.boolean :confirmed
      t.boolean :moderated
      t.boolean :withdrawed
      t.string :privateInfo

      t.timestamps
    end
  end
end
