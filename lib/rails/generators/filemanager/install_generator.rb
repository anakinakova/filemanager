module Filemanager
  module Generators
    require 'uri'
    require 'fileutils'

    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../../", __FILE__)

      def copy_locale
        %w(images javascripts stylesheets).each do |type|
          directory assets_source_path(type), assets_destination_path(type)
        end
      end
      def copy_config
        FileUtils.copy "filemanager.yml", 'config/filemanager.yml'
      end

      def create_resources_dictionary
        FileUtils.mkpath resources_path
      end

      private

      def assets_source_path(type)
        "vendor/assets/#{type}/"
      end

      def assets_destination_path(type)
        "vendor/assets/#{type}/filemanager/"
      end

      def resources_path
        'public/files/resources/'
      end
    end
  end
end