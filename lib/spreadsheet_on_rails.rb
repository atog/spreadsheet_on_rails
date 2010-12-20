module SpreadsheetOnRails

  class Handler < ::ActionView::TemplateHandler
    include ActionView::TemplateHandlers::Compilable

    def compile(template)
      %Q{controller.response.content_type ||= Mime::XLS
         controller.headers["Content-Disposition"] = "attachment;filename=" + (controller.respond_to?(:xls_filename) ? controller.send(:xls_filename) : "")
         SpreadsheetOnRails::Base.new { |workbook| #{template.source} }.process}
    end

  end

  class Base
    @@temp_file = nil

    def temp_file_path
      unless @@temp_file
        temp = Tempfile.new('spreadsheet-', File.join(RAILS_ROOT, 'tmp') )
        @@temp_file = temp.path
        temp.close
      end
      @@temp_file
    end

    def initialize
      yield workbook
    end

    def workbook
      @workbook ||= Spreadsheet::Workbook.new
    end

    def process
      workbook.write(temp_file_path)
      File.open(temp_file_path, 'rb') { |file| file.read }
    end
  end
end
