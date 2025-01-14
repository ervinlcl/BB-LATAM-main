Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # Code is not reloaded between requests.
  config.cache_classes = true

  # Eager load code on boot.
  config.eager_load = true

  # Full error reports are disabled and caching is turned on.
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true

  # Read encrypted secrets from `config/secrets.yml.enc`.
  config.read_encrypted_secrets = true

  # Enable serving static files from the `/public` folder.
  config.public_file_server.enabled = ENV['RAILS_SERVE_STATIC_FILES'].present?

  # Compress JavaScripts and CSS.
  config.assets.js_compressor = :uglifier
  # config.assets.css_compressor = :sass

  # Fallback to the asset pipeline if a precompiled asset is missed.
  config.assets.compile = true

  # Precompiled assets will be served with a specific version.
  config.assets.version = '1.0'

  # Specifies the header that your server uses for sending files.
  # config.action_dispatch.x_sendfile_header = 'X-Sendfile' # for Apache
  # config.action_dispatch.x_sendfile_header = 'X-Accel-Redirect' # for NGINX

  # Force all access to the app over SSL.
  # Uncomment this to enable SSL in production:
  # config.force_ssl = true

  # Use the lowest log level for diagnostics.
  config.log_level = :debug

  # Prepend all log lines with the following tags.
  config.log_tags = [:request_id]

  # Use a different cache store in production.
  # config.cache_store = :mem_cache_store

  # Configure Active Job with a real queuing backend (optional).
  # config.active_job.queue_adapter = :resque
  # config.active_job.queue_name_prefix = "mi_gran_empresa_#{Rails.env}"

  config.action_mailer.perform_caching = false

  # Email configuration.
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
    address: "smtp.gmail.com",
    port: 587,
    user_name: ENV['SMTP_USERNAME'], # Usa variables de entorno
    password: ENV['SMTP_PASSWORD'], # Usa variables de entorno
    authentication: :plain,
    enable_starttls_auto: true
  }

  # Enable locale fallbacks for I18n.
  config.i18n.fallbacks = true

  # Send deprecation notices to registered listeners.
  config.active_support.deprecation = :notify

  # Use default logging formatter.
  config.log_formatter = ::Logger::Formatter.new

  if ENV["RAILS_LOG_TO_STDOUT"].present?
    logger           = ActiveSupport::Logger.new(STDOUT)
    logger.formatter = config.log_formatter
    config.logger    = ActiveSupport::TaggedLogging.new(logger)
  end

  # Do not dump schema after migrations.
  config.active_record.dump_schema_after_migration = false

  # Paperclip configuration for S3.
  config.paperclip_defaults = {
    storage: :s3,
    s3_credentials: {
      bucket: ENV['AWS_BUCKET'], # Usa variables de entorno
      access_key_id: ENV['AWS_ACCESS_KEY_ID'], # Usa variables de entorno
      secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'], # Usa variables de entorno
      s3_region: ENV['AWS_REGION'] # Usa variables de entorno
    }
  }
end
