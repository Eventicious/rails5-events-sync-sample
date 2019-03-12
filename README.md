# Пример приложения, реализующего синхронизацию изменений участников с сервисом Eventicious
Код в данном репозитории служит иллюстрацией к документации Eventicious Public API.

`./config/routes.rb`:
```ruby
	post 'attendees-sync/Create', to: 'attendees_sync#create'
	put 'attendees-sync/Update/:id', to: 'attendees_sync#update'
	delete 'attendees-sync/Delete/:id', to: 'attendees_sync#delete'
```
В таком варианте url-адрес, который вы сообщите нашей службе поддержки, будет иметь вид https://yourservice.com/attendees-sync

`./app/controllers/attendees_sync_controller.rb`:
```ruby
class AttendeesSyncController < ApplicationController
	skip_before_action :verify_authenticity_token

	def create
		attendee = Attendee.new(convertedParams)
		attendee.save
		render json: {'id'=> attendee.id}
	end
	def update
		attendee = Attendee.find(params[:id])
		attendee.update(convertedParams)
		render json: nil
	end
	def delete
		attendee = Attendee.find(params[:id])
		attendee.destroy
		render json: nil
	end
	private
	def convertedParams #or your mapper
		attendeeFields = [:firstName, :lastName, :position, :city, :vk, :twitter, :facebook, :email, :showEmail, :phone, :showPhone, :description, :externalImagePath, :externalThumbnailPath, :isSpeaker, :company, :language, :networkingCode, :authorized, :confirmed, :moderated, :withdrawed, :privateInfo]
		attendeeHash = {}
		attendeeFields.each {|field|
			paramsField = field.to_s
			paramsField[0] = paramsField[0].upcase
			attendeeHash[field] = params[paramsField]
		}
		attendeeHash
	end
end
```
