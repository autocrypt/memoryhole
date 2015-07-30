#!/usr/bin/env ruby
# Captures mutt display of each email in the corpus.
# Author: Kareem Khazem <karkhaz@karkhaz.com>

require 'fileutils'

Thread::abort_on_exception = true

script_path = File.expand_path(File.dirname(__FILE__))
root_path   = File.expand_path("../..", script_path)

corpus_path = "#{root_path}/corpus"
gpg_path    = "#{corpus_path}/OpenPGP/GNUPGHOME"

gpg_env     = "GNUPGHOME=#{gpg_path}"

maildir_path = "#{root_path}/inboxes/maildir"

mutt_version = `mutt -v`.split("\n")[0].gsub(/^Mutt (.+?)\s\(.+/, '\1')
screens_dir  = "#{root_path}/screenshots/mutt/#{mutt_version}"


def keypress(key) system "xdotool key  #{key}"  end
def type(text)    system "xdotool type #{text}" end

def current_window_title
  active_window = `xprop -root _NET_ACTIVE_WINDOW`

  win_id = active_window.gsub(/.+window id # (0x.+)$/, '\1')
  win_prop = `xprop -id #{win_id}`

  title = nil
  win_prop.each_line do |line|
    if(m = line.match(/^WM_NAME\(STRING\) = "(?<name>.+)"$/))
      title = m[:name]
    end
  end

  title
end


# Before starting, decrypt an encrypted message so that the passphrase
# for Julia's secret key is cached.

pid = Thread.new do
  system "#{gpg_env} gpg --decrypt #{corpus_path}/D.eml >/dev/null 2>&1"
end

(0..5).each do
  # Perhaps the passphrase is already cached
  (sleep 1; next) unless current_window_title == 'pinentry'

  type("_julia_")
  keypress("Return")
  break
end

Thread.kill(pid)


# Now open mutt and start saving screenshots

FileUtils.mkdir_p(screens_dir)

# Interaction with mutt
pid = Thread.new do
  # Wait for mutt to launch (launched at the end of this script)
  sleep 1

  keypress('Z')             # Scroll to the top
  keypress('Return')        # View first message

  num_msgs = Dir.glob("#{corpus_path}/*.eml").length
  (0..num_msgs - 1).each do |i|
    letter = ('A'.getbyte(0) + i).chr  # A, B, C, ...

    sleep 0.2

    # Take a screenshot image
    system "scrot -u #{screens_dir}/#{letter}.png"

    keypress 'Control+a'    # Take a screen textdump
    keypress 'h'            # Take a screen textdump

    sleep 0.2

    (keypress 'j'; next) unless(File.exists? 'hardcopy.0')

    dump = File.read('hardcopy.0')

    # Get rid of clutter
    msg = ''
    num_blank_lines = 0
    start_appending = false
    dump.each_line do |line|
      start_appending = true if(line.match(/^Date:/))
      next unless start_appending

      if(line.match(/^$/))
        num_blank_lines += 1
      else
        num_blank_lines = 0
      end

      break if num_blank_lines > 5

      msg += line
    end

    msg = msg[0..-6]
    File.write("#{screens_dir}/#{letter}.txt", msg)

    keypress 'j'            # Scroll down one by one email
  end

  keypress 'q'

  FileUtils.rm('hardcopy.0')
end


system "#{gpg_env} screen mutt -f #{maildir_path}"

pid.join
