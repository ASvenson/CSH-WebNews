PERSONAL_CODES = { nil => 0, :mine_in_thread => 1, :mine_reply => 2, :mine => 3 }.freeze
PERSONAL_CLASSES = PERSONAL_CODES.keys.freeze
PERSONAL_CODES_DESCRIPTIONS = {
  'Always' => 0,
  'Threads I\'m in' => 1,
  'Replies to me' => 2,
  'Never' => 3
}
DIGEST_TYPES_DESCRIPTIONS = {
  'No digest' => 'none',
  'Daily digest' => 'daily',
  'Weekly digest' => 'weekly',
  'Monthly digest' => 'monthly'
}

# Randomly generate a short string unlikely to be found in post content
MARK_STRING = (1..12).map{ ('A'..'Z').to_a[rand(26)] }.join.gsub(/[AEIOU]/, 'x')

AVAILABLE_THEMES =
  Dir.glob("#{Rails.root}/app/assets/stylesheets/theme-*").
  map{ |path| /theme-(.*)\.css/.match(path)[1] }.map(&:to_sym)
