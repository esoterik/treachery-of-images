require 'erb'

def hash_to_style(top:, left:)
  "top: #{top}%; left: #{left}%"
end 

def render_shape(klass:, top:, left:)
  "<div class='#{klass}' style='top: #{top}%; left:#{left}%'></div>"
end

def erase(width: 5, height: 5, top:, left:)
  "<div class='eraser' style='width: #{width}px; height: #{height}px; "\
    "top: #{top}%; left:#{left}%'></div>"
end

def erase_rect(width: 5, height: 5, top:, left:)
  "<div class='eraser_rectangle' style='width: #{width}px; height: #{height}px; "\
    "top: #{top}%; left:#{left}%'></div>"
end
f = File.read("index.html.erb")
puts ERB.new(f).result
