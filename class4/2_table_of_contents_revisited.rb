#!/usr/bin/env ruby
#
# Section 8.3 on page 56
# 4 points
#
# Rewrite your table of contents program on page 32. Start the program with an
# array holding all of the information for your table of contents (chapter
# names, page numbers, and so on). Then print out the information from the array
# in a beautifully formatted table of contents like this:
#
#                 Table of Contents
#
# Chapter 1:  Getting Started                page  1
# Chapter 2:  Numbers                        page  9
# Chapter 3:  Letters                        page 13

  header = "Table of Contents"

  content_1 = "Chapter 1:  Getting Started"
  content_2 = "Chapter 2:  Numbers"
  content_3 = "Chapter 3:  Letters"

  page_1 = "page 1"
  page_2 = "page 9"
  page_3 = "page 13"

  tables = [content_1, page_1, content_2, page_2, content_3, page_3]
  i = 0

  puts header.center(50)
  puts ""

  loop do
      break if i > 5
      puts tables[i].ljust(30) + tables[i+1].rjust(20)
      i = i + 2
  end
