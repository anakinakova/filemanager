=begin
  filemanager.rb
  Copyright (C) 2008  Leon Li

  You may redistribute it and/or modify it under the same
  license terms as Ruby.
=end
require 'uri'
require 'fileutils'

FM_ID = 'filemanager'

FM_IMAGE_TYPES   = %w(jpg gif png jpeg)
FM_FLASH_TYPES   = %w(swf)
FM_MOVIE_TYPES   = %w(mov avi wmv)
FM_RM_TYPES      = %w(rm rmvb)
FM_OFFICE_TYPES  = %w(doc docx dot xls xla ppt pps ppz pot hlp chm ods)
FM_EXCEL_TYPES   = %w(xls xla ods)
FM_WORD_TYPES    = %w(doc dot docx)
FM_PPT_TYPES     = %w(ppt pps ppz pot)
FM_HELP_TYPES    = %w(hlp chm)
FM_PLAIN_TYPES  = %w(txt ini inf html htm rb jsp php asp)
FM_NONE_TYPES    = %w(rar zip)
FM_SUPPORT_TYPES = FM_IMAGE_TYPES + FM_FLASH_TYPES + FM_MOVIE_TYPES + FM_RM_TYPES + FM_OFFICE_TYPES + FM_HELP_TYPES + FM_PLAIN_TYPES
FM_UNKNOWN_TYPE = 'unknown'

FM_LOCK_PATH     = '/files/resources'
FM_ENCODING_TO   = 'UTF-8'
FM_ENCODING_FROM = ''
FM_RESOURCES_PATH = 'public/files/resources'
FM_TEMP_DIR      = 'public/files/temp'
require 'filemanager/railtie' if defined?(Rails)
module Filemanager

end