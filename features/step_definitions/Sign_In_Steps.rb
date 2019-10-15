# frozen_string_literal: true

When('I am on the Sign In Page') do
  find_element(PortalWarehouse::LOGIN_EMAIL_FIELD).send_keys(TestUser.email)
end
