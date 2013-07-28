class User < ActiveRecord::Base
  # Add a getter and setter for these "transient" fields
  # Transient fields are not persisted to the database,
  # so they are not in the migration.
  attr_accessor :password, :password_confirmation
end
