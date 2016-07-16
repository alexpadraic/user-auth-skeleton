class Round < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :user, presence: true
  belongs_to :deck, presence: true


end
