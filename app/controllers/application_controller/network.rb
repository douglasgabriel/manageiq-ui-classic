module ApplicationController::Network
  extend ActiveSupport::Concern

  def network_managers
    Rbac::Filterer.filtered(ManageIQ::Providers::Openstack::NetworkManager).select(:id, :name, :parent_ems_id)
  end
end
