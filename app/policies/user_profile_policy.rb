class UserProfilePolicy < ApplicationPolicy
  attr_reader :user, :user_profile

  def initialize(user, user_profile)
    @user = user
    @user_profile = user_profile
  end

  def show?
    true
  end
end
