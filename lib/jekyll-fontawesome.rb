require 'jekyll-fontawesome/version'

module Jekyll
  module Fontawesome
    class Generator < Jekyll::Generator
      def generate(site)
        @site = site
        dir = site.config['js_assets'] || 'assets'
        site.static_files << fontawesome
      end

      def fontawesome
        file = Jekyll::StaticFile.new(@site, '', __dir__, '', 'fontawesome.js')
      end
    end

    class FontAwesomeJsFile < Jekyll::StaticFile
      
    end
  end
end
