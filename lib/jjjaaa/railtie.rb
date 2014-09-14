module Jjjaaa
  class Railtie < Rails::Railtie
    initializer "jjjaaa.insert_middleware" do |app|
      app.config.middleware.use "Jjjaaa::Middleware"
    end
  end
end
