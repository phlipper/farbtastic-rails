require "rails"

# Supply generator for Rails 3.0.x or if asset pipeline is not enabled
if ::Rails.version < "3.1" || !::Rails.application.config.assets.enabled
  module Farbtastic
    module Generators
      class InstallGenerator < ::Rails::Generators::Base

        desc "This generator installs Farbtastic #{Farbtastic::Rails::FARBTASTIC_VERSION}"
        source_root File.expand_path("../../../../../vendor/assets", __FILE__)

        def copy_javascript
          say_status("copying", "Farbtastic JS", :green)
          copy_file "javascripts/farbtastic.js", "public/javascripts/farbtastic.js"
        end

        def copy_stylesheet
          say_status("copying", "Farbtastic CSS", :green)
          copy_file "stylesheets/farbtastic.css.scss", "public/stylesheets/farbtastic.css"

          say_status("updating", "CSS Image Paths", :green)
          gsub_file "public/stylesheets/farbtastic.css", "image-url(\"farbtastic/", "url(\"/images/farbtastic/"
        end

        def copy_images
          say_status("copying", "Farbtastic Images", :green)
          directory "images/farbtastic", "public/images/farbtastic"
        end

      end
    end
  end
else
  module Farbtastic
    module Generators
      class InstallGenerator < ::Rails::Generators::Base
        desc "Just show instructions so people will know what to do when mistakenly using generator for Rails 3.1 apps"

        def do_nothing
          say_status("deprecated", "You are using Rails 3.1 with the asset pipeline enabled, so this generator is not needed.")
          say_status("", "The necessary files are already in your asset pipeline.")
          say_status("", "Just add `//= require farbtastic` to your app/assets/javascripts/application.js and add `*= require farbtastic` to your app/assets/stylesheets/application.css")
          say_status("", "If you upgraded your app from Rails 3.0 and still have farbtastic.js, farbtastic.css or images/farbtastic in your public assets folders, be sure to remove them.")
          say_status("", "If you do not want the asset pipeline enabled, you may turn it off in application.rb and re-run this generator.")
          # ok, nothing
        end
      end
    end
  end
end
