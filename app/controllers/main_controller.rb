class MainController < ApplicationController
  def index
  end

  def add_text
    if params[:upload]
      text_file = params[:upload]['datafile']
      BibText.new do |t|
        t.set_text(text_file.read, text_file.original_filename)
      end
    end
  end

  def show_texts
    @texts = BibText.find(:all)
  end

  def display_text
    puts "called!"
    @text = BibText.find_by_id(params[:id]).source
    render :partial => 'text'
  end
end
