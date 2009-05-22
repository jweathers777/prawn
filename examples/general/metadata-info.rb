# encoding: utf-8
#
# Demonstrates how to set metadata properties via the info option
# It allows one to specify no standard properties
#
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', '..', 'lib'))
require "prawn"

Prawn::Document.generate "metadata-info.pdf",
  :info => {
    :Title => "My title", :Author => "John Doe", :Subject => "My Subject",
    :Keywords => "test metadata ruby pdf dry", :Creator => "ACME Soft App", 
    :Producer => "Prawn", :CreationDate => Time.now, :Grok => "Test Property"
  } do       
  text "This is a test of setting metadata properties via the info option"
  text "In addition to standard properties, it also allows one to specify custom properties like 'Grok'"
end
