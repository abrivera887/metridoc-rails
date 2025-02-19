ActiveAdmin.register Keyserver::PlatformTerm do
  menu false
  permit_params :term_id, :term_value, :term_abbreviation
  actions :all, :except => [:new, :edit, :update, :destroy]

  filter :term_id, filters: [:contains, :not_cont, :starts_with, :ends_with, :equals]
  filter :term_value, filters: [:contains, :not_cont, :starts_with, :ends_with, :equals]
  filter :term_abbreviation, filters: [:contains, :not_cont, :starts_with, :ends_with, :equals]

end
