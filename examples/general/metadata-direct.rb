# encoding: utf-8
#
# Demonstrates how to set metadata properties via direct options
#
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', '..', 'lib'))
require "prawn"

Prawn::Document.generate "metadata-direct.pdf",
  :Title => "My title", :Author => "John Doe", :Subject => "My Subject",
  :Keywords => "test metadata ruby pdf dry", :Creator => "ACME Soft App", 
  :Producer => "Prawn", :CreationDate => Time.now do       
  text "This is a test of setting metadata properties via direct options"
end
