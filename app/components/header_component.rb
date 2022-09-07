class HeaderComponent < ViewComponent::Base
  renders_one :parent
  renders_one :actions
  renders_one :title
  renders_one :details
end
