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

def circle(mod: nil, w:, h:, top:, left:)
  klass = "pipe_circle#{'_' + mod if mod}"
  "<div class='#{klass}' style='width: #{w}px; height: #{h}px; "\
    "top: #{top}%; left:#{left}%'></div>"
end

def draw(color: 'main', w:, h:, top:, left:, rotate: 0, radius: 50, extra: nil)
  "<div class='#{color}' style='width: #{w}px; height: #{h}px; "\
    "top: #{top}%; left:#{left}%; transform: rotate(#{rotate}deg); "\
    "border-radius: #{radius}%; #{extra}'></div>"
end

f = File.read("index.html.erb")
puts ERB.new(f).result
