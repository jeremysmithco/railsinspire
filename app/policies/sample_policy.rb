class SamplePolicy < ApplicationPolicy
  attr_reader :user, :sample

  def initialize(user, sample)
    @user = user
    @sample = sample
  end

  def show?
    true
  end

  def create?
    owner?
  end

  def update?
    owner?
  end

  def destroy?
    owner?
  end

  private

  def owner?
    sample.user == user
  end
end
