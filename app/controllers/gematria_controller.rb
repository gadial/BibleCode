require 'gematria'
class GematriaController < ApplicationController
  def index
  end
  def compute
    @w1, @w2 = params[:word_1], params[:word_2]
    @val_1 = @w1.to_gematric_value
    @val_2 = @w2.to_gematric_value
    @difference = @val_1-@val_2
    render :partial => 'result'
  end
end
