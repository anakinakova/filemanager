module Filemanager
  module ViewHelpers
    def filemanager
      haml_tag :iframe, :src => "/fm/filemanager/", :width => "100%", :height => "600", :style => "border:1px solid black;"
    end
  end
end