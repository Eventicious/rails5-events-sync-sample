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
	def convertedParams
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
