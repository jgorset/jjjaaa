module Jjjaaa
  class Middleware
    def initialize(app)
      @app = app
    end

    def call(env)
      job = fork do
        exec "afplay #{jjjaaa}"
      end

      Process.detach job

      @app.call(env)
    end

    private

    def path
      Pathname.new File.expand_path File.dirname(__FILE__)
    end

    def lib
      path.parent
    end

    def base
      lib.parent
    end

    def sounds
      base.join "sounds"
    end

    def jjjaaa
      sounds.join "jjjaaa.m4a"
    end
  end
end
