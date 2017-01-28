module PadrinoHeroku
  class App
    module AboutHelper
      def recaptcha_sitekey
        ENV["RECAPTCHA_SITEKEY"]
      end
    end

    helpers AboutHelper
  end
end
