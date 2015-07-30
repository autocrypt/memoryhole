#!/usr/bin/env ruby

css = File.read ARGV[0]

css = css.gsub /\s*(.+:.+;)\s*\n/, '\1 '

css = css.gsub /{\s*\n/m, '{'

css = css.gsub /\n\s*}/m, '}'

css = css.gsub /\n\n/m, "\n"

puts css
