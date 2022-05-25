class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.where(user: user)
    end

    def show?
      owner_or_admin?
    end
  end

  private

  def owner_or_admin?
    record.user == user
  end

  def create?
    true
  end
end
