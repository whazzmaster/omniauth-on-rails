module HomeHelper
  def fetch_code(filename)
    File.read("#{Rails.root}/app/views/code/#{filename}")
  end

  def highlight_code(filename, lexer)
    Pygments.highlight(fetch_code(filename), lexer: lexer, options: {linespans: 'line'}).html_safe
  end
end