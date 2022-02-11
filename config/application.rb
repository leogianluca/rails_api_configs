require_relative "boot"

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "active_storage/engine"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_mailbox/engine"
require "action_text/engine"
require "action_view/railtie"
require "action_cable/engine"
# require "sprockets/railtie"
require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module TeletarifaApi
  class Application < Rails::Application
    config.load_defaults 6.1

    config.i18n.available_locales = 'pt-BR'
    config.i18n.default_locale = "pt-BR"
    config.time_zone = "Brasilia"

    # Date
    Date::DATE_FORMATS[:default] = "%d/%m/%Y"

    # Time
    Time::DATE_FORMATS[:default] = "%d/%m/%Y %H:%M"

    # E-mail dispatch
    # config.action_mailer.delivery_method = :smtp
    # config.action_mailer.smtp_settings = {
    #   address: "",
    #   port: ,
    #   domain: "",
    #   user_name: "",
    #   password: "",
    #   authentication: :login,
    #   enable_starttls_auto: true,
    # }

    config.api_only = true
    config.middleware.use ActionDispatch::Flash
  end
end
