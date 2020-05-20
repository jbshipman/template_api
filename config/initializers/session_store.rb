# Conditional statement to ensure that the session cookie is created by the correct source
# while in production the cookie will be created by the hosted server
# or the localhost if not production

if Rails.env == "production"
  Rails.application.config.session_store :cookie_store, key: "_api_authentication", domain: "template_api.herokuapp.com"
else
  Rails.application.config.session_store :cookie_store, key: "_api_authentication"
end
