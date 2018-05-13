require 'securerandom'

class Boolean < ApplicationRecord
  self.primary_key = 'id'

  before_create { |bool| bool.id = SecureRandom.uuid }
end
