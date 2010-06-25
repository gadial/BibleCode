class String
  def clean
    split("").reject{|x| not x=~/[a-zA-Z]/}.join("").downcase
  end
end