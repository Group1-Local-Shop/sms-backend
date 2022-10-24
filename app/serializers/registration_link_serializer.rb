class RegistrationLinkSerializer < ActiveModel::Serializer
  attributes :id, :registration_link, :expiry_date
end
