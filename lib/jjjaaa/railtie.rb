module Jjjaaa
  class Railtie < Rails::Railtie
    initializer "jjjaaa.insert_middleware" do |app|
      app.config.middleware.use "Jjjaaa::Middleware" if Rails.env.development?
    end
  end
end
