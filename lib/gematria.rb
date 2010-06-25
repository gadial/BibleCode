HEBREW_UNICODE_INDICATOR = "\327"

class String
  def hebrew_preserving_split
    temp = split("")
    temp.each_index do |i|
      if temp[i] == HEBREW_UNICODE_INDICATOR
        temp[i+1] = temp[i] + temp[i+1] unless nil == temp[i+1]
      end
    end
    return temp.reject{|x| x == HEBREW_UNICODE_INDICATOR}
  end
  def to_gematric_value
    conversion_table = {
      "א" => 1,
      "ב" => 2,
      "ג" => 3,
      "ד" => 4,
      "ה" => 5,
      "ו" => 6,
      "ז" => 7,
      "ח" => 8,
      "ט" => 9,
      "י" => 10,
      "כ" => 20,
      "ך" => 20,
      "ל" => 30,
      "מ" => 40,
      "ם" => 40,
      "נ" => 50,
      "ן" => 50,
      "ס" => 60,
      "ע" => 70,
      "פ" => 80,
      "ף" => 80,
      "צ" => 90,
      "ץ" => 90,
      "ק" => 100,
      "ר" => 200,
      "ש" => 300,
      "ת" => 400
    }
    puts hebrew_preserving_split.inspect
    hebrew_preserving_split.collect{|s| conversion_table[s] || 0 }.inject(0){|sum, x| sum + x}
  end
end