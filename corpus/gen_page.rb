#!/usr/bin/env ruby

puts <<DOC
This page contains examples of Memory Hole-compliant e-mails. You can
check your favourite mail user agent's compliance with the Memory Hole
standard by checking the screenshots associated with each e-mail.
DOC

$indent = '  '
$indent_level = 0

$current_tag = []

def nl
  "\n#{$indent * $indent_level}"
end

def ind
  $indent_level += 1
  nl
end

def und
  raise if $indent_level < 1
  $indent_level -= 1
  nl
end

def open tag
  raise tag unless(m = tag.match /^(?<name>\w+).*$/)
  $current_tag.push m[:name]
  "<#{tag}>#{ind}"
end

def close tag
  raise tag unless(m = tag.match /^(?<name>\w+)$/)
  raise tag unless $current_tag.pop == m[:name]
  "#{und}</#{tag}>"
end


def colorify(mail)

  def   red(str)  "<span style=\"color:#dc322f;\">#{str}</span>" end
  def green(str)  "<span style=\"color:#859900;\">#{str}</span>" end
  def  blue(str)  "<span style=\"color:#268bd2;\">#{str}</span>" end
  def  cyan(str)  "<span style=\"color:#2aa198;\">#{str}</span>" end
  def orange(str) "<span style=\"color:#cb4b16;\">#{str}</span>" end
  def yellow(str) "<span style=\"color:#b58900;\">#{str}</span>" end

  acc = ''

  mail.each_line do |line|
    if(m = line.match(/^Subject:(?<val>.+)/))
      acc += red('Subject:') + m[:val] + "\n"
    elsif(m = line.match(/^To:(?<val>.+)/))
      acc += green('To:') + m[:val] + "\n"
    elsif(m = line.match(/^From:(?<val>.+)/))
      acc += orange('From:') + m[:val] + "\n"
    elsif(m = line.match(/^(?<field>([-\w])+:)(?<val>.+)/))
      acc += blue(m[:field]) + m[:val] + "\n"
    elsif(m = line.match(/^--(?<val>\w+)/))
      acc += cyan("--" + m[:val]) + "\n"
    else
      acc += line
    end
  end

  acc
end


# ==== Generate TOC ==================================================
#`````````````````````````````````````````````````````````````````````

puts "### Contents"

puts open "ul"

Dir.glob("corpus/*.eml").sort.each do |email|
  desc = email.gsub(/eml/, 'desc')
  desc = File.read(desc).split("\n")[0]

  email.gsub!(/corpus\//, '')
  email.gsub!(/\.eml/, '')

  puts open "li"
  printf "  <a href=\"##{email}\">"
  printf email + ": "
  printf desc
  printf "  </a>"
  puts close "li"

end

puts close "ul"



# ==== Generate messages =============================================
#`````````````````````````````````````````````````````````````````````

puts "### Examples"

Dir.glob("corpus/*.eml").sort.each do |email|

  mail_name = email.gsub(/corpus\//, '')
  mail_name = mail_name.gsub!(/\.eml/, '')

  puts "<h3 id=\"#{mail_name}\" class=\"mail-example\">"
  puts "Email #{mail_name}: "
  puts "</h3>"

  desc  = email.gsub(/eml/, 'desc')
  desc  = File.read(desc)
  brief = desc.split("\n")[0]
  long  = desc.split("\n")[1..-1].join("\n")

  email = File.read(email)

  puts brief

  printf "<pre>"
  printf long
  puts "</pre>"

  printf "<div class=\"code-block\">"
  printf colorify email
  puts "</div>"
end
