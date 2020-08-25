class Pair < ApplicationRecord
  # Alias Associations VVV
  #
  belongs_to :requestor_user, :class_name => "User"
  belongs_to :respondor_user, :class_name => "User", :optional => true


  validates :title, :length => {in: 10..100}
  validates :description, :presence => true

#self = pair
#active record where method
# Pair.by_status()
  def self.by_status(status)
    case status
    when :open
      where(:respondor_user => nil)
    when :accepted
      where.not(:respondor_user => nil)
    end
  end

#self = @pair = pair
  def accepted_by(user)
    if user == self.requestor_user
      self.errors.add(:respondor_user, "Blah")
      return false
    else
      self.update(:respondor_user => user)
    end
  end

#force method to become a boolean, return true or nil not a user object
  def accepted?
    true if respondor_user
  end

  def topic
    ActiveSupport::Deprecation.warn("Please use `title` over `topic`")
    self.title
  end
end
