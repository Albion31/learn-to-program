# table of contents, revisited

main_title = "Table of Contents"
chapters = [["Chapter 1:", " Getting started", "page  1"],
            ["Chapter 2:", " Numbers", "page  9"],
            ["Chapter 3:", " Letters", "page 13"]]

line_width = 50
puts main_title.center(line_width)
puts ""

chapters.each do |chapter, title, page|
  puts chapter +  title.ljust(line_width/3) + page.rjust(line_width/2)
end
