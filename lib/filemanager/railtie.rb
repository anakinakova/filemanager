require 'filemanager/view_helpers'
module Filemanager
  class Railtie < Rails::Railtie
    initializer "filemanager.view_helpers" do
      ActionView::Base.send :include, ViewHelpers
    end
  end
end