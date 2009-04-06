# Include hook code here
require "spreadsheet_on_rails"

Mime::Type.register "application/excel", :xls
ActionView::Template.register_template_handler 'rxls', SpreadsheetOnRails::Handler