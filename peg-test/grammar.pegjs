document = blank_line* heading? blank_line* text*
eol = "\n"
title = [a-zA-Z]+
heading = "#"+ " " title eol
text = [a-zA-Z]+ eol
blank_line = eol
