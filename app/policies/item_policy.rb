class ItemPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end

  def create?
    true
  end

  def update?
    owner_or_admin?
  end

  private

  def owner_or_admin?
    record.user == user
  end
end
