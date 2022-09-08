class SamplePolicy < ApplicationPolicy
  attr_reader :user, :sample

  def initialize(user, sample)
    @user = user
    @sample = sample
  end

  def show?
    public? || owner?
  end

  def create?
    true
  end

  def update?
    owner?
  end

  def destroy?
    owner?
  end

  private

  def public?
    @sample.status_public?
  end

  def owner?
    sample.user == user
  end
end
