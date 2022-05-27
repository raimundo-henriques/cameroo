class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.where(user: user)
    end
  end

  def show?
    owner_or_admin? || record.item.user == user
  end

  def create?
    true
  end

  def update?
    owner_or_admin?
  end

  def destroy?
    owner_or_admin? || record.item.user == user
  end

  private

  def owner_or_admin?
    record.user == user
  end
end
