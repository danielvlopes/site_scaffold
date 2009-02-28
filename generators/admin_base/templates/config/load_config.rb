# ==========================================
# LOAD CONFIG.YML TO APP_CONFIG CONSTANT
# ==========================================
APP_CONFIG = YAML.load_file("#{RAILS_ROOT}/config/config.yml")[RAILS_ENV].merge(YAML.load_file("#{RAILS_ROOT}/config/config.yml")['common'])

# ==========================================
# WILL PAGINATE
# ==========================================
WillPaginate::ViewHelpers.pagination_options[:previous_label] = I18n.t("pagination.previous")
WillPaginate::ViewHelpers.pagination_options[:next_label] = I18n.t("pagination.next")

# ==========================================
# OTHER SETTINGS
# ==========================================
# change default url in maillers
ActionMailer::Base.default_url_options[:host] = APP_CONFIG['site_host']