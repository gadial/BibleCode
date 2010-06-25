require 'auxiliary'

class BibText < ActiveRecord::Base
  def BibText.hello_world
    puts "hello world!"
  end
  def set_text(text, title = "No title")
    self.title = title
    self.source = text
    self.main = text.clean
    save
  end
end
