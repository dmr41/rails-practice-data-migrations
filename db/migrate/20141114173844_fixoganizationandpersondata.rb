class Fixoganizationandpersondata < ActiveRecord::Migration
  def change
    Organization.where('name is NULL OR name = ? OR name = ?', "", " ").delete_all
    Organization.where(active: nil).update_all(active: false)
    Person.where(date_of_birth: 1000.years.ago..100.years.ago).delete_all
  end
end
