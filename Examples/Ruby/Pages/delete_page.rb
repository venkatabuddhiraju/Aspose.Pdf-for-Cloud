#ExStart:
require 'aspose_pdf_cloud'

class Page

  include AsposePDFCloud
  include AsposeStorageCloud

  def initialize
    #Get App key and App SID from https://cloud.aspose.com
    AsposeApp.app_key_and_sid("APP_KEY", "APP_SID")
    @pdf_api = PdfApi.new  
  end

  def upload_file(file_name)
    @storage_api = StorageApi.new 
    response = @storage_api.put_create(file_name, File.open("../../../data/" << file_name,"r") { |io| io.read } )
  end

  # Delete document page by its number.
  def delete_page
    file_name = "sample-input.pdf"
    upload_file(file_name)

    page_number = 1
    response = @pdf_api.delete_page(file_name, page_number)
  end

end

page = Page.new()
puts page.delete_page
#ExEnd: